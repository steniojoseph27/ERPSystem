namespace InventoryService.Core.Entities
{
    public class PurchaseOrder
    {
        public int PurchaseOrderId { get; set; }
        public int ProductId { get; set; }
        public int WarehouseId { get; set; }
        public int Quantity { get; set; }
        public DateTime OrderDate { get; set; }
        public string Status { get; set; }
    }
}
