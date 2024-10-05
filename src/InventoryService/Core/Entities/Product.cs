namespace InventoryService.Core.Entities
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string SKU { get; set; } // Stock Keeping Unit
        public string Description { get; set; }
        public string Category { get; set; }
        public decimal UnitPrice { get; set; }
    }
}
