CREATE TABLE [dbo].[IdentityResourceProperty] (
    [Id]                 INT             IDENTITY (1, 1) NOT NULL,
    [IdentityResourceId] INT             NOT NULL,
    [Key]                NVARCHAR (250)  NOT NULL,
    [Value]              NVARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_IdentityResourceProperty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_IdentityResourceProperty_IdentityResource_IdentityResourceId] FOREIGN KEY ([IdentityResourceId]) REFERENCES [dbo].[IdentityResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_IdentityResourceProperty_IdentityResourceId]
    ON [dbo].[IdentityResourceProperty]([IdentityResourceId] ASC);

