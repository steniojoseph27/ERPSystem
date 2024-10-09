CREATE PROCEDURE sp_GetInventoryMovement
    @InventoryMovementId INT
AS
BEGIN
    SELECT * FROM InventoryMovements WHERE InventoryMovementId = @InventoryMovementId;
END
GO
