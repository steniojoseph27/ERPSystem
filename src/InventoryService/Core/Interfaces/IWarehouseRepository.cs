using InventoryService.Core.Entities;
namespace InventoryService.Core.Interfaces
{
    public interface IWarehouseRepository
    {
        Warehouse GetWarehouse(int warehouseId);
        void CreateWarehouse(Warehouse warehouse);
        void UpdateWarehouse(Warehouse warehouse);
        void DeleteWarehouse(int warehouseId);
    }
}
