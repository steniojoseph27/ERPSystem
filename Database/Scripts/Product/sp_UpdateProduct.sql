-- Update Product
CREATE PROCEDURE sp_UpdateProduct
    @ProductId INT,
    @ProductName NVARCHAR(255),
    @SKU NVARCHAR(100),
    @Description NVARCHAR(500),
    @Category NVARCHAR(100),
    @UnitPrice DECIMAL(18, 2)
AS
BEGIN
    UPDATE Products
    SET ProductName = @ProductName,
        SKU = @SKU,
        Description = @Description,
        Category = @Category,
        UnitPrice = @UnitPrice
    WHERE ProductId = @ProductId;
END
GO