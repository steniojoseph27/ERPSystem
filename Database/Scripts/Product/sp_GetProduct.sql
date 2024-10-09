-- Read Product
CREATE PROCEDURE sp_GetProduct
    @ProductId INT
AS
BEGIN
    SELECT * FROM Products WHERE ProductId = @ProductId;
END
GO
