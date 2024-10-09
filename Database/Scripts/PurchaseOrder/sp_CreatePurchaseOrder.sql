CREATE PROCEDURE sp_CreatePurchaseOrder
    @OrderNumber NVARCHAR(50),
    @Supplier NVARCHAR(255),
    @OrderDate DATETIME,
    @Status NVARCHAR(50),
    @TotalAmount DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO PurchaseOrders (OrderNumber, Supplier, OrderDate, Status, TotalAmount)
    VALUES (@OrderNumber, @Supplier, @OrderDate, @Status, @TotalAmount);
END
GO
