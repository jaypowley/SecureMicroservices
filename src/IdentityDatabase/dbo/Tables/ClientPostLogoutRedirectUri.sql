CREATE TABLE [dbo].[ClientPostLogoutRedirectUri] (
    [Id]                    INT             IDENTITY (1, 1) NOT NULL,
    [PostLogoutRedirectUri] NVARCHAR (2000) NOT NULL,
    [ClientId]              INT             NOT NULL,
    CONSTRAINT [PK_ClientPostLogoutRedirectUri] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientPostLogoutRedirectUri_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientPostLogoutRedirectUri_ClientId]
    ON [dbo].[ClientPostLogoutRedirectUri]([ClientId] ASC);

