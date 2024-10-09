CREATE PROCEDURE sp_CreateInventoryMovement
    @ProductId INT,
    @WarehouseId INT,
    @Quantity INT,
    @MovementType NVARCHAR(50),
    @MovementDate DATETIME
AS
BEGIN
    INSERT INTO InventoryMovements (ProductId, WarehouseId, Quantity, MovementType, MovementDate)
    VALUES (@ProductId, @WarehouseId, @Quantity, @MovementType, @MovementDate);
END
GO
