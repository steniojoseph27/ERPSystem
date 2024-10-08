namespace InventoryService.Core.Entities
{
    public class StockAudit
    {
        public int AuditId { get; set; }
        public int WarehouseId { get; set; }
        public DateTime AuditDate { get; set; }
        public int ProductId { get; set; }
        public int RecordedQuantity { get; set; }
        public int ActualQuantity { get; set; }
        public string Notes { get; set; } = string.Empty;
    }
}
