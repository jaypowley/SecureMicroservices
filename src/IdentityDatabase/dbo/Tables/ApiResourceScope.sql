CREATE TABLE [dbo].[ApiResourceScope] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Scope]         NVARCHAR (200) NOT NULL,
    [ApiResourceId] INT            NOT NULL,
    CONSTRAINT [PK_ApiResourceScope] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiResourceScope_ApiResource_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiResourceScope_ApiResourceId]
    ON [dbo].[ApiResourceScope]([ApiResourceId] ASC);

