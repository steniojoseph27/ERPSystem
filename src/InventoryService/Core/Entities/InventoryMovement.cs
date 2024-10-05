namespace InventoryService.Core.Entities
{
    public class InventoryMovement
    {
        public int MovementId { get; set; }
        public int ProductId { get; set; }
        public int WarehouseId { get; set; }
        public int Quantity { get; set; }
        public DateTime MovementDate { get; set; }
        public string MovementType { get; set; } // "INBOUND" or "OUTBOUND"
    }
}
