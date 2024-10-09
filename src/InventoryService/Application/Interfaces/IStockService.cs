namespace InventoryService.Application.Interfaces
{
    public interface IStockService
    {
        StockDto GetStock(int productId, int warehouseId);
        void UpdateStock(StockDto stockDto);
        IEnumerable<StockDto> GetAllStockByWarehouse(int warehouseId);
    }
}
