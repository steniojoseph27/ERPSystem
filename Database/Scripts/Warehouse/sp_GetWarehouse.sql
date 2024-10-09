CREATE PROCEDURE sp_GetWarehouse
    @WarehouseId INT
AS
BEGIN
    SELECT * FROM Warehouses WHERE WarehouseId = @WarehouseId;
END
GO
