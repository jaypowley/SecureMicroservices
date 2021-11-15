CREATE TABLE [dbo].[IdentityResource] (
    [Id]                      INT             IDENTITY (1, 1) NOT NULL,
    [Enabled]                 BIT             NOT NULL,
    [Name]                    NVARCHAR (200)  NOT NULL,
    [DisplayName]             NVARCHAR (200)  NULL,
    [Description]             NVARCHAR (1000) NULL,
    [Required]                BIT             NOT NULL,
    [Emphasize]               BIT             NOT NULL,
    [ShowInDiscoveryDocument] BIT             NOT NULL,
    [Created]                 DATETIME2 (7)   NOT NULL,
    [Updated]                 DATETIME2 (7)   NULL,
    [NonEditable]             BIT             NOT NULL,
    CONSTRAINT [PK_IdentityResource] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityResource_Name]
    ON [dbo].[IdentityResource]([Name] ASC);

