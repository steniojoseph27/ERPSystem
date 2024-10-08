namespace InventoryService.Core.Entities
{
    public class Warehouse
    {
        public int WarehouseId { get; set; }
        public string WarehouseName { get; set; } = string.Empty;
        public string Location { get; set; } = string.Empty;
        public string ContactInfo { get; set; } = string.Empty;
    }
}
