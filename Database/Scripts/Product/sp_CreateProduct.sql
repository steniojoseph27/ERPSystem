-- Create Product
CREATE PROCEDURE sp_CreateProduct
    @ProductName NVARCHAR(255),
    @SKU NVARCHAR(100),
    @Description NVARCHAR(500),
    @Category NVARCHAR(100),
    @UnitPrice DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO Products (ProductName, SKU, Description, Category, UnitPrice)
    VALUES (@ProductName, @SKU, @Description, @Category, @UnitPrice);
END
GO
