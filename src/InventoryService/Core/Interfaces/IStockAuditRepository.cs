using InventoryService.Core.Entities;
namespace InventoryService.Core.Interfaces
{
    public interface IStockAuditRepository
    {
        void CreateAudit(StockAudit audit);
        IEnumerable<StockAudit> GetAuditsByWarehouse(int warehouseId);
    }
}
