CREATE PROCEDURE sp_DeleteInventoryMovement
    @InventoryMovementId INT
AS
BEGIN
    DELETE FROM InventoryMovements WHERE InventoryMovementId = @InventoryMovementId;
END
GO
