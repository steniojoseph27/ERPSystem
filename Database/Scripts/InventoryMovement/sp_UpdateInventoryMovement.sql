CREATE PROCEDURE sp_UpdateInventoryMovement
    @InventoryMovementId INT,
    @ProductId INT,
    @WarehouseId INT,
    @Quantity INT,
    @MovementType NVARCHAR(50),
    @MovementDate DATETIME
AS
BEGIN
    UPDATE InventoryMovements
    SET ProductId = @ProductId,
        WarehouseId = @WarehouseId,
        Quantity = @Quantity,
        MovementType = @MovementType,
        MovementDate = @MovementDate
    WHERE InventoryMovementId = @InventoryMovementId;
END
GO
