CREATE TABLE [dbo].[ApiResourceClaim] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [ApiResourceId] INT            NOT NULL,
    [Type]          NVARCHAR (200) NOT NULL,
    CONSTRAINT [PK_ApiResourceClaim] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiResourceClaim_ApiResource_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiResourceClaim_ApiResourceId]
    ON [dbo].[ApiResourceClaim]([ApiResourceId] ASC);

