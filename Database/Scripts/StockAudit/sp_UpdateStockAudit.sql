CREATE PROCEDURE sp_UpdateStockAudit
    @StockAuditId INT,
    @ProductId INT,
    @WarehouseId INT,
    @AuditDate DATETIME,
    @Quantity INT,
    @Auditor NVARCHAR(255)
AS
BEGIN
    UPDATE StockAudits
    SET ProductId = @ProductId,
        WarehouseId = @WarehouseId,
        AuditDate = @AuditDate,
        Quantity = @Quantity,
        Auditor = @Auditor
    WHERE StockAuditId = @StockAuditId;
END
GO
