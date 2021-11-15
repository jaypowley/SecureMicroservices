CREATE TABLE [dbo].[ClientProperty] (
    [Id]       INT             IDENTITY (1, 1) NOT NULL,
    [ClientId] INT             NOT NULL,
    [Key]      NVARCHAR (250)  NOT NULL,
    [Value]    NVARCHAR (2000) NOT NULL,
    CONSTRAINT [PK_ClientProperty] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientProperty_Client_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientProperties_ClientId]
    ON [dbo].[ClientProperty]([ClientId] ASC);

