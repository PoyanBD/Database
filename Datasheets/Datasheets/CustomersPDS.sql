MERGE INTO Customers AS Target 
USING (VALUES 
        (1, 'Ali', 'Delavari', 'Ali.delavari@test.com', 00848485854, 'Tech',7000000), 
        (2, 'Jack', 'Jonson', 'Jack.jonson@test.com', 00185485418, 'Medcare',85000000), 
        (3, 'Tom', 'Jingelberry', 'Tj@test.com', 00485148525, 'DomainX',950000000)
) 
AS Source (CostumerNum, FirstName, LastName, Email, PhoneNumber, Domain, InvestCap) 
ON Target.CostumerNum = Source.CostumerNum 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (FirstName, LastName, Email, PhoneNumber, Domain, InvestCap) 
VALUES (FirstName, LastName, Email, PhoneNumber, Domain, InvestCap);