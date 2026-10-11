INSERT INTO Customers (FullName, PhoneNumber, Email, ShippingAddress, RegistrationDate)
VALUES (N'Ahmed Ali', N'01012345678', N'ahmed@mail.com', N'Cairo', GETDATE());
INSERT INTO Suppliers (Name, Country, Email, Address, ContactNumber) VALUES
(N'TechSource', N'Egypt', N'tech@mail.com', N'Cairo', N'0225551111'),
(N'Global Gadgets', N'China', N'global@mail.com', N'Shenzhen', N'0867551222'),
(N'Nile Supplies', N'Egypt', N'nile@mail.com', N'Giza', N'0235553333');
INSERT INTO Categories (Name, Description) VALUES
(N'Electronics', N'Electronic devices'),
(N'Accessories', N'Computer accessories');
INSERT INTO Products (Name, UnitPrice) VALUES (N'Wireless Mouse', 150.00);
CREATE TABLE ArchivedStock (
TranId INT,
ProductId INT,
QuantityChange INT,
TranDate DATE
);
INSERT INTO ArchivedStock (TranId, ProductId, QuantityChange, TranDate)
SELECT TranId, ProductId, QuantityChange, TranDate
FROM StockTransactions
WHERE TranDate < '2023-01-01';
UPDATE Products
SET UnitPrice = UnitPrice * 1.10
WHERE UnitPrice < 100;
UPDATE Orders
SET Status = CASE WHEN TotalAmount > 5000 THEN N'Premium' ELSE N'Standard' END;