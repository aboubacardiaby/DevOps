﻿/*
Deployment script for dEVOPS

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "dEVOPS"
:setvar DefaultFilePrefix "dEVOPS"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
GO

GO


    
SET IDENTITY_INSERT [dbo].[Country] ON
GO

INSERT [dbo].[Country] ([CountryId], [Name], [TwoLetterIsoCode], [ThreeLetterIsoCode], [NumericIsoCode], [CreateDate], [CreatedBy], [UpdateDate], [UpdatedBy]) VALUES (1, N'United States                                                                                       ', N'US                                                ', N'USA                                               ', N'840                                               ', CAST(N'2018-07-31T13:27:40.870' AS DateTime), N'MicrosoftAccount\aboubacardiaby@hotmail.com', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Country] OFF
GO

SET IDENTITY_INSERT [dbo].[Hospital] ON
GO

INSERT [dbo].[Hospital] ([HospitalId], [CountryId], [HospitalName], [URL], [SslEnabled], [SecureUrl], [Host], [DefaultLanguageId], [DisplayOrder], [HospitalAddress], [HospitalPhoneNumber], [CreateDate], [CreatedBy], [UpdateDate], [UpdatedBy]) VALUES (1, 1, N'Libass Ndao', N'url', N'1', N'ss', N'host', 1, 1, N'123 asdddress', N'455555', CAST(N'2018-07-31T14:10:09.547' AS DateTime), N'MicrosoftAccount\aboubacardiaby@hotmail.com', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO


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

SET IDENTITY_INSERT [dbo].[Problem] ON
GO

INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(1,'GENERAL','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(2,'MUSCLE/JOINTS/BONES','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(3,'EARS','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(4,'EYES','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(5,'THROAT','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(6,'HEART AND LUNGS','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(7,'NERVOUS SYSTEM','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(8,'STOMACH AND INTESTINES','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(9,'SKIN','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(10,'BLOOD','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(11,'KIDNEY/URINE/BLADDER','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(12,'Women Only','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(13,'PSYCHIATRIC ','')
INSERT [dbo].[Problem] ([ProblemId],[Name],[Description])VALUES(14,'OTHER PROBLEMS','')
SET IDENTITY_INSERT [dbo].[Problem] OFF
GO
SET IDENTITY_INSERT [dbo].[Symptoms] ON
GO
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(1,1,'Recent weight gain','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(2,1,'Recent weight loss','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(3,1,'Fatigue','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(4,1,'Weakness','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(5,1,'Fever','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(6,1,'Night sweats','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(7,1,'Cought sweats','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(8,1,'Loss Appetit sweats','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(8,1,'Loss Appetit sweats','')
INSERT [dbo].[Symptoms] ([SymptomId], [ProblemId],[Name],[Description])VALUES(9,1,'Vomissement','')
SET IDENTITY_INSERT [dbo].[Symptoms] OFF
GO

GO

GO
PRINT N'Update complete.';


GO
