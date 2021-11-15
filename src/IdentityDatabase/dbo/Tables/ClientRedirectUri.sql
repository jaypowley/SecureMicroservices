CREATE TABLE [dbo].[ClientRedirectUri] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [RedirectUri] NVARCHAR (2000) NOT NULL,
    [ClientId]    INT             NOT NULL,
    CONSTRAINT [PK_ClientRedirectUri] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientRedirectUri_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientRedirectUri_ClientId]
    ON [dbo].[ClientRedirectUri]([ClientId] ASC);

