CREATE TABLE [dbo].[ClientSecret] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [ClientId]    INT             NOT NULL,
    [Description] NVARCHAR (2000) NULL,
    [Value]       NVARCHAR (4000) NOT NULL,
    [Expiration]  DATETIME2 (7)   NULL,
    [Type]        NVARCHAR (250)  NOT NULL,
    [Created]     DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_ClientSecret] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientSecret_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientSecret_ClientId]
    ON [dbo].[ClientSecret]([ClientId] ASC);

