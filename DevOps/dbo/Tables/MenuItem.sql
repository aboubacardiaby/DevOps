CREATE TABLE [dbo].[MenuItem]
(
	[Id] BIGINT       IDENTITY (1, 1) NOT NULL,
	[Title] Varchar(70) Not NULL,
	[Url] Varchar(70) NOT NULL,
	[OpenInNewWindow ] bit Not NULL,
	CONSTRAINT [PK_MenuItem_Id] PRIMARY KEY CLUSTERED ([Id] ASC)
)
