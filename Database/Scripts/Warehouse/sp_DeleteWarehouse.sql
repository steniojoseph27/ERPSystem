CREATE PROCEDURE sp_DeleteWarehouse
    @WarehouseId INT
AS
BEGIN
    DELETE FROM Warehouses WHERE WarehouseId = @WarehouseId;
END
GO
