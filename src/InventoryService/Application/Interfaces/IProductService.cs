namespace InventoryService.Application.Interfaces
{
    public interface IProductService
    {
        ProductDto GetProduct(int productId);
        void CreateProduct(ProductDto productDto);
        void UpdateProduct(ProductDto productDto);
        void DeleteProduct(int productId);
    }
}
