CREATE TABLE [dbo].[IdentityResourceClaim] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [IdentityResourceId] INT            NOT NULL,
    [Type]               NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_IdentityResourceClaim] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_IdentityResourceClaim_IdentityResource_IdentityResourceId] FOREIGN KEY ([IdentityResourceId]) REFERENCES [dbo].[IdentityResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_IdentityResourceClaim_IdentityResourceId]
    ON [dbo].[IdentityResourceClaim]([IdentityResourceId] ASC);

