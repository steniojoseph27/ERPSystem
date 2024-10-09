-- Create or Update Stock
CREATE PROCEDURE sp_UpdateStock
    @ProductId INT,
    @WarehouseId INT,
    @Quantity INT,
    @LastUpdated DATETIME
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Stock WHERE ProductId = @ProductId AND WarehouseId = @WarehouseId)
    BEGIN
        UPDATE Stock
        SET Quantity = @Quantity, LastUpdated = @LastUpdated
        WHERE ProductId = @ProductId AND WarehouseId = @WarehouseId;
    END
    ELSE
    BEGIN
        INSERT INTO Stock (ProductId, WarehouseId, Quantity, LastUpdated)
        VALUES (@ProductId, @WarehouseId, @Quantity, @LastUpdated);
    END
END
GO

