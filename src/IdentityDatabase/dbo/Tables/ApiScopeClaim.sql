CREATE TABLE [dbo].[ApiScopeClaim] (
    [Id]      INT            IDENTITY (1, 1) NOT NULL,
    [ScopeId] INT            NOT NULL,
    [Type]    NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_ApiScopeClaim] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiScopeClaim_ApiScope_ScopeId] FOREIGN KEY ([ScopeId]) REFERENCES [dbo].[ApiScope] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiScopeClaim_ScopeId]
    ON [dbo].[ApiScopeClaim]([ScopeId] ASC);

