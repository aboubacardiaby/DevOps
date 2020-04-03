/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

		SET IDENTITY_INSERT [dbo].[Gender] ON
		GO
		INSERT INTO [dbo].[Gender]([GenderId],[Name],[CreateDate],[CreatedBy])
			 VALUES  (1 ,'Male',GETDATE() ,SUSER_SNAME())
		GO
		INSERT INTO [dbo].[Gender]([GenderId],[Name],[CreateDate],[CreatedBy])
			 VALUES  (2 ,'Female',GETDATE() ,SUSER_SNAME())
		GO
		INSERT INTO [dbo].[Gender]([GenderId],[Name],[CreateDate],[CreatedBy])
			 VALUES  (3,'Other',GETDATE() ,SUSER_SNAME())
		GO
		SET IDENTITY_INSERT [dbo].[Gender] OFF
		GO
