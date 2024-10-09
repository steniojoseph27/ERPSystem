CREATE PROCEDURE sp_GetStockAudit
    @StockAuditId INT
AS
BEGIN
    SELECT * FROM StockAudits WHERE StockAuditId = @StockAuditId;
END
GO
