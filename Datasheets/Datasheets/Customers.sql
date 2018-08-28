CREATE TABLE [dbo].[Customers] (
	[CustomerID]	INT NOT NULL PRIMARY KEY,
    [FirstName]     NVARCHAR (50) NULL,
    [LastName]      NVARCHAR (50) NULL,
    [Email]			NVARCHAR (50) NULL,
	[PhoneNumber]	INT Null,
    [Industry]		NVARCHAR(50) NULL, 
    [InvestCap]		INT NULL, 
)