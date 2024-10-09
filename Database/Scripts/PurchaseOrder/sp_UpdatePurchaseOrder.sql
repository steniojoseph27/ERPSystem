CREATE PROCEDURE sp_UpdatePurchaseOrder
    @PurchaseOrderId INT,
    @OrderNumber NVARCHAR(50),
    @Supplier NVARCHAR(255),
    @OrderDate DATETIME,
    @Status NVARCHAR(50),
    @TotalAmount DECIMAL(18, 2)
AS
BEGIN
    UPDATE PurchaseOrders
    SET OrderNumber = @OrderNumber,
        Supplier = @Supplier,
        OrderDate = @OrderDate,
        Status = @Status,
        TotalAmount = @TotalAmount
    WHERE PurchaseOrderId = @PurchaseOrderId;
END
GO
