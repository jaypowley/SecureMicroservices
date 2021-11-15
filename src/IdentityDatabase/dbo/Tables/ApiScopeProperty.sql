CREATE TABLE [dbo].[ApiScopeProperty] (
    [Id]      INT             IDENTITY (1, 1) NOT NULL,
    [ScopeId] INT             NOT NULL,
    [Key]     NVARCHAR (250)  NOT NULL,
    [Value]   NVARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_ApiScopeProperty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiScopeProperty_ApiScope_ScopeId] FOREIGN KEY ([ScopeId]) REFERENCES [dbo].[ApiScope] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiScopeProperty_ScopeId]
    ON [dbo].[ApiScopeProperty]([ScopeId] ASC);

