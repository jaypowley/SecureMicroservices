﻿CREATE TABLE [dbo].[ApiScope] (
    [Id]                      INT             IDENTITY (1, 1) NOT NULL,
    [Enabled]                 BIT             NOT NULL,
    [Name]                    NVARCHAR (200)  NOT NULL,
    [DisplayName]             NVARCHAR (200)  NULL,
    [Description]             NVARCHAR (1000) NULL,
    [Required]                BIT             NOT NULL,
    [Emphasize]               BIT             NOT NULL,
    [ShowInDiscoveryDocument] BIT             NOT NULL,
    CONSTRAINT [PK_ApiScope] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiScope_Name]
    ON [dbo].[ApiScope]([Name] ASC);

