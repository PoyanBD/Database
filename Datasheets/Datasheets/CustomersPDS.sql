MERGE INTO Customers AS Target 
USING (VALUES 
        (1, N'Ali', N'Delavari', N'Ali.delavari@test.com', 00848485854, N'Tech',7000000), 
        (2, N'Jack', N'Jonson', N'Jack.jonson@test.com', 00185485418, N'Medcare',85000000), 
        (3, N'Tom', N'Jingelberry', N'Tj@test.com', 00485148525, N'DomainX',950000000)
) 
AS Source (CustomerID, FirstName, LastName, Email, PhoneNumber, Industry, InvestCap) 
ON Target.CustomerID = Source.CustomerID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (CustomerID, FirstName, LastName, Email, PhoneNumber, Industry, InvestCap) 
VALUES (CustomerID, FirstName, LastName, Email, PhoneNumber, Industry, InvestCap);
