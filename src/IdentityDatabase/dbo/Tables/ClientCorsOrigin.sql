CREATE TABLE [dbo].[ClientCorsOrigin] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Origin]   NVARCHAR (150) NOT NULL,
    [ClientId] INT            NOT NULL,
    CONSTRAINT [PK_ClientCorsOrigin] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientCorsOrigin_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientCorsOrigin_ClientId]
    ON [dbo].[ClientCorsOrigin]([ClientId] ASC);

