SET IDENTITY_INSERT [dbo].[Demographic] ON
		GO

INSERT INTO [dbo].[Demographic]
           ([DemographicId]
		   ,[Name]
           ,[CreateDate]
           ,[CreatedBy] )
     VALUES
           (1
           ,'Black'
           ,GETDATE() 
		   ,SUSER_SNAME())
GO


INSERT INTO [dbo].[Demographic]
           ([DemographicId]
		   ,[Name]
           ,[CreateDate]
           ,[CreatedBy] )
     VALUES
           (2
           ,'White'
           ,GETDATE() 
		   ,SUSER_SNAME())
GO

INSERT INTO [dbo].[Demographic]
           ([DemographicId]
		   ,[Name]
           ,[CreateDate]
           ,[CreatedBy] )
     VALUES
           (3
           ,'Latino'
           ,GETDATE() 
		   ,SUSER_SNAME())
GO
SET IDENTITY_INSERT [dbo].[Demographic] OFF
