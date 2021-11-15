CREATE TABLE [dbo].[ClientScope] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Scope]    NVARCHAR (200) NOT NULL,
    [ClientId] INT            NOT NULL,
    CONSTRAINT [PK_ClientScope] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientScope_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientScope_ClientId]
    ON [dbo].[ClientScope]([ClientId] ASC);

