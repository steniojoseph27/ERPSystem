using InventoryService.Core.Entities;
namespace InventoryService.Core.Interfaces
{
    public interface IStockRepository
    {
        Stock GetStock(int productId, int warehouseId);
        void UpdateStock(Stock stock);
        IEnumerable<Stock> GetAllStockByWarehouse(int warehouseId);
    }
}
