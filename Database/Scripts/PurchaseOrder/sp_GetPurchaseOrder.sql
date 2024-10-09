CREATE PROCEDURE sp_GetPurchaseOrder
    @PurchaseOrderId INT
AS
BEGIN
    SELECT * FROM PurchaseOrders WHERE PurchaseOrderId = @PurchaseOrderId;
END
GO
