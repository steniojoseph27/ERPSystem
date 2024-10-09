using InventoryService.Application.DTOs;
using InventoryService.Application.Interfaces;
using InventoryService.Core.Entities;
using InventoryService.Core.Interfaces;

namespace InventoryService.Application.Services
{
    public class StockService : IStockService
    {
        private readonly IStockRepository _stockRepository;

        public StockService(IStockRepository stockRepository)
        {
            _stockRepository = stockRepository;
        }

        public StockDto GetStock(int productId, int warehouseId)
        {
            var stock = _stockRepository.GetStock(productId, warehouseId);
            if (stock == null) return null;

            return new StockDto
            {
                StockId = stock.StockId,
                ProductId = stock.ProductId,
                WarehouseId = stock.WarehouseId,
                Quantity = stock.Quantity,
                LastUpdated = stock.LastUpdated
            };
        }

        public void UpdateStock(StockDto stockDto)
        {
            var stock = new Stock
            {
                StockId = stockDto.StockId,
                ProductId = stockDto.ProductId,
                WarehouseId = stockDto.WarehouseId,
                Quantity = stockDto.Quantity,
                LastUpdated = stockDto.LastUpdated
            };

            _stockRepository.UpdateStock(stock);
        }

        public IEnumerable<StockDto> GetAllStockByWarehouse(int warehouseId)
        {
            var stockList = _stockRepository.GetAllStockByWarehouse(warehouseId);
            return stockList.Select(stock => new StockDto
            {
                StockId = stock.StockId,
                ProductId = stock.ProductId,
                WarehouseId = stock.WarehouseId,
                Quantity = stock.Quantity,
                LastUpdated = stock.LastUpdated
            }).ToList();
        }
    }
}
