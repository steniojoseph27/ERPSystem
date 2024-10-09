CREATE PROCEDURE sp_DeleteStockAudit
    @StockAuditId INT
AS
BEGIN
    DELETE FROM StockAudits WHERE StockAuditId = @StockAuditId;
END
GO
