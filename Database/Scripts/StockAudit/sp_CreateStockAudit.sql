CREATE PROCEDURE sp_CreateStockAudit
    @ProductId INT,
    @WarehouseId INT,
    @AuditDate DATETIME,
    @Quantity INT,
    @Auditor NVARCHAR(255)
AS
BEGIN
    INSERT INTO StockAudits (ProductId, WarehouseId, AuditDate, Quantity, Auditor)
    VALUES (@ProductId, @WarehouseId, @AuditDate, @Quantity, @Auditor);
END
GO
