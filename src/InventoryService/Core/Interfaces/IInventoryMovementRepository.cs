using InventoryService.Core.Entities;

namespace InventoryService.Core.Interfaces
{
    public interface IInventoryMovementRepository
    {
        void CreateMovement(InventoryMovement movement);
        IEnumerable<InventoryMovement> GetMovementsByProduct(int productId);
        IEnumerable<InventoryMovement> GetMovementsByWarehouse(int warehouseId);
    }
}
