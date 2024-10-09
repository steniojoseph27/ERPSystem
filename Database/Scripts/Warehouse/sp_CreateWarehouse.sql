CREATE PROCEDURE sp_CreateWarehouse
    @WarehouseName NVARCHAR(255),
    @Location NVARCHAR(255),
    @Capacity INT
AS
BEGIN
    INSERT INTO Warehouses (WarehouseName, Location, Capacity)
    VALUES (@WarehouseName, @Location, @Capacity);
END
GO
