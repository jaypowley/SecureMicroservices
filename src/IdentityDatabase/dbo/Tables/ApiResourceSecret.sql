CREATE TABLE [dbo].[ApiResourceSecret] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [ApiResourceId] INT             NOT NULL,
    [Description]   NVARCHAR (1000) NULL,
    [Value]         NVARCHAR (4000) NOT NULL,
    [Expiration]    DATETIME2 (7)   NULL,
    [Type]          NVARCHAR (250)  NOT NULL,
    [Created]       DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_ApiResourceSecret] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiResourceSecret_ApiResource_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiResourceSecret_ApiResourceId]
    ON [dbo].[ApiResourceSecret]([ApiResourceId] ASC);

