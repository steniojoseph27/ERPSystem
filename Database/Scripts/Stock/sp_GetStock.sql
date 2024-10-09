
-- Read Stock by Product and Warehouse
CREATE PROCEDURE sp_GetStock
    @ProductId INT,
    @WarehouseId INT
AS
BEGIN
    SELECT * FROM Stock WHERE ProductId = @ProductId AND WarehouseId = @WarehouseId;
END
GO
