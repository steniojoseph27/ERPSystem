CREATE PROCEDURE sp_DeletePurchaseOrder
    @PurchaseOrderId INT
AS
BEGIN
    DELETE FROM PurchaseOrders WHERE PurchaseOrderId = @PurchaseOrderId;
END
GO
