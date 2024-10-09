using InventoryService.Application.DTOs;
using InventoryService.Application.Interfaces;
using InventoryService.Core.Entities;
using InventoryService.Core.Interfaces;

namespace InventoryService.Application.Services
{
    public class ProductService : IProductService
    {
        private readonly IProductRepository _productRepository;

        public ProductService(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        public ProductDto GetProduct(int productId)
        {
            var product = _productRepository.GetProduct(productId);
            if (product == null) return null;

            return new ProductDto
            {
                ProductId = product.ProductId,
                ProductName = product.ProductName,
                SKU = product.SKU,
                Description = product.Description,
                Category = product.Category,
                UnitPrice = product.UnitPrice
            };
        }

        public void CreateProduct(ProductDto productDto)
        {
            var product = new Product
            {
                ProductName = productDto.ProductName,
                SKU = productDto.SKU,
                Description = productDto.Description,
                Category = productDto.Category,
                UnitPrice = productDto.UnitPrice
            };

            _productRepository.CreateProduct(product);
        }

        public void UpdateProduct(ProductDto productDto)
        {
            var product = _productRepository.GetProduct(productDto.ProductId);
            if (product != null)
            {
                product.ProductName = productDto.ProductName;
                product.SKU = productDto.SKU;
                product.Description = productDto.Description;
                product.Category = productDto.Category;
                product.UnitPrice = productDto.UnitPrice;

                _productRepository.UpdateProduct(product);
            }
        }

        public void DeleteProduct(int productId)
        {
            _productRepository.DeleteProduct(productId);
        }
    }
}
