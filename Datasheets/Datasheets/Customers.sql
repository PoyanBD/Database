CREATE TABLE [dbo].[Customers] (
	[CostumerNumber] INT   IDENTITY (1, 1) NOT NULL,
    [FirstName]     NVARCHAR (50) NULL,
    [LastName]      NVARCHAR (50) NULL,
    [Email]			NVARCHAR (50) NULL,
	[PhoneNumber]	INT Null,
    [Domains]		NVARCHAR(50) NULL, 
    [InvestCap] MONEY NULL, 
    PRIMARY KEY CLUSTERED ([CostumerNumber] ASC)
)