using InventoryService.Core.Entities;

namespace InventoryService.Core.Interfaces
{
    public interface IPurchaseOrderRepository
    {
        PurchaseOrder GetPurchaseOrder(int purchaseOrderId);
        void CreatePurchaseOrder(PurchaseOrder purchaseOrder);
        void UpdatePurchaseOrder(PurchaseOrder purchaseOrder);
        void DeletePurchaseOrder(int purchaseOrderId);
    }
}
