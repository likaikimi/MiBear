USE master
GO

IF EXISTS(SELECT 1 FROM SYS.databases WHERE name = 'MiBear')
	DROP DATABASE MiBear
CREATE DATABASE MiBear
GO

USE MiBear
GO

-- 用户表
IF EXISTS(SELECT * FROM sys.objects WHERE name = 'Sys_User' AND [type] = 'u')
	DROP TABLE Sys_User
CREATE TABLE Sys_User
    (
      fId INT PRIMARY KEY
              IDENTITY(1, 1) ,
      fLoginName VARCHAR(50) ,
      fLoginPwd VARCHAR(50) ,
      fUserName VARCHAR(50) ,
      fCreator INT ,
      fCreatedDate DATETIME ,
      fModifier INT ,
      fModifiedDate DATETIME
    )


-- 菜单表
CREATE TABLE Sys_Menu
    (
      fID INT PRIMARY KEY
              IDENTITY(1, 1) ,
      fParentID INT ,
      fName VARCHAR(50) ,
      fURL VARCHAR(50) ,
      fOrder INT ,
      fImgSrc VARCHAR(50) ,
      fCreator INT ,
      fCreatedDate DATETIME ,
      fModifier INT ,
      fModifiedDate DATETIME
    )