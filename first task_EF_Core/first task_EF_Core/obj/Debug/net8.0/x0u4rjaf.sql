IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [coustmerSet] (
    [Id] int NOT NULL IDENTITY,
    [Name] varchar(100) NOT NULL,
    [Email] varchar(80) NOT NULL,
    [Cardnumber] nvarchar(max) NOT NULL,
    [sales] float NOT NULL,
    CONSTRAINT [PK_coustmerSet] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [productSet] (
    [ProductId] int NOT NULL IDENTITY,
    [Name] varchar(50) NOT NULL,
    [Quantity] int NOT NULL,
    [Price] float NOT NULL,
    [Sales] float NOT NULL,
    CONSTRAINT [PK_productSet] PRIMARY KEY ([ProductId])
);
GO

CREATE TABLE [sales] (
    [Id] int NOT NULL IDENTITY,
    [Product] nvarchar(max) NOT NULL,
    [Customer] nvarchar(max) NOT NULL,
    [Store] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_sales] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [stores] (
    [Id] int NOT NULL IDENTITY,
    [Name] varchar(80) NOT NULL,
    [Sales] float NOT NULL,
    CONSTRAINT [PK_stores] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240912082400_InitialCreate', N'8.0.8');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [productSet] ADD [Description] nvarchar(max) NOT NULL DEFAULT N'';
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240912082621_ProductsAddColumnDescription', N'8.0.8');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [sales] ADD [date] datetime2 NOT NULL DEFAULT '0001-01-01T00:00:00.0000000';
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240912082915_SalesAddDateDefault', N'8.0.8');
GO

COMMIT;
GO

