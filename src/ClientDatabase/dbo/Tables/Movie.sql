CREATE TABLE [dbo].[Movie] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (100) NOT NULL,
    [Genre]       NVARCHAR (50) NULL,
    [Rating]      DECIMAL(18, 1) NULL,
    [ReleaseDate] DATETIME2 (7)  NOT NULL,
    [ImageUrl]    NVARCHAR (255) NULL,
    [OwnerId]       INT NOT NULL,
    CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED ([Id] ASC)
);

