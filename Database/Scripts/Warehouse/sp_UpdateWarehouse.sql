CREATE PROCEDURE sp_UpdateWarehouse
    @WarehouseId INT,
    @WarehouseName NVARCHAR(255),
    @Location NVARCHAR(255),
    @Capacity INT
AS
BEGIN
    UPDATE Warehouses
    SET WarehouseName = @WarehouseName,
        Location = @Location,
        Capacity = @Capacity
    WHERE WarehouseId = @WarehouseId;
END
GO
