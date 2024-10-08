using InventoryService.Core.Entities;
namespace InventoryService.Core.Interfaces
{
    public interface IProductRepository
    {
        Product GetProduct(int productId);
        void CreateProduct(Product product);
        void UpdateProduct(Product product);
        void DeleteProduct(int productId);
    }
}
