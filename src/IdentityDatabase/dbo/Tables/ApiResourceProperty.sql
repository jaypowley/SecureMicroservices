CREATE TABLE [dbo].[ApiResourceProperty] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [ApiResourceId] INT             NOT NULL,
    [Key]           NVARCHAR (250)  NOT NULL,
    [Value]         NVARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_ApiResourceProperty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiResourceProperty_ApiResource_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResource] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiResourceProperty_ApiResourceId]
    ON [dbo].[ApiResourceProperty]([ApiResourceId] ASC);

