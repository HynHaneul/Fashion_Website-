CREATE DATABASE Fashion;
GO
USE Fashion;
GO
CREATE TABLE Category(
	Category_ID INT PRIMARY KEY identity(1,1) NOT NULL,
	Title NVARCHAR(150),
	_Description NVARCHAR(500),
	Position INT, 
	SeoTitle NVARCHAR(250),
	SeoDescription NVARCHAR(550),
	SeoKeywords NVARCHAR(250),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO
CREATE TABLE Advertisement(
	Advertisement_ID INT PRIMARY KEY identity (1,1) NOT NULL,
	Title NVARCHAR(250),
	_Description NVARCHAR(500),
	_Image NVARCHAR(500),
	_Type INT,
	Link NVARCHAR(500),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO 
CREATE TABLE Contact(
	Contact_ID INT PRIMARY KEY NOT NULL, 
	_Name NVARCHAR(150),
	Website NVARCHAR(150),
	Email NVARCHAR(150),
	_Message NVARCHAR(1000),
	IsRead BIT,
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO 
CREATE TABLE Product_Category(
	Prodcut_Category_ID INT PRIMARY KEY identity (1,1) NOT NULL, 
	Title NVARCHAR(150),
	_Description NVARCHAR(500),
	Icon NVARCHAR(500),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO
CREATE TABLE _Product(
	_Product_ID INT PRIMARY KEY NOT NULL,
	Prodcut_Category_ID INT,
	_Description NVARCHAR(1000),
	Detail NVARCHAR(MAX),
	_Image NVARCHAR(500),
	Price  DECIMAL(18,2),
	PriceSale DECIMAL(18,2),
	Quantity INT,
	SeoTitle NVARCHAR(250),
	SeoDescription NVARCHAR(550),
	SeoKeywords NVARCHAR(250),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO 
CREATE TABLE News(
	News_ID INT PRIMARY KEY NOT NULL,
	Title NVARCHAR(250),
	Category_ID INT,
	_Description NVARCHAR(1000),
	Detail NVARCHAR(MAX),
	_Image NVARCHAR(500),
	SeoTitle NVARCHAR(250),
	SeoDescription NVARCHAR(550),
	SeoKeywords NVARCHAR(250),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO
CREATE TABLE Posts(
	Posts_ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Title NVARCHAR(250),
	Category_ID INT,
	_Description NVARCHAR(1000),
	Detail NVARCHAR(MAX),
	_Image NVARCHAR(500),
	SeoTitle NVARCHAR(250),
	SeoDescription NVARCHAR(550),
	SeoKeywords NVARCHAR(250),
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO
CREATE TABLE _Order(
	_Order_ID INT PRIMARY KEY NOT NULL, 
	Code NVARCHAR(50),
	CustomerName NVARCHAR(150),
	Phone NVARCHAR(15),
	_Address NVARCHAR(500),
	TotalAmount DECIMAL(18,0),
	Quantity INT,
	CreatedDate DATETIME, 
	CreatedBy NVARCHAR(150),
	ModifiedDate DATETIME,
	ModifiedBy NVARCHAR(150)
);
GO
CREATE TABLE Order_Details(
	Order_Details_ID INT  PRIMARY KEY NOT NULL,
	_Order_ID INT, 
	_Product_ID INT , 
	Price DECIMAL(18,0),
	Quantity INT,
);
GO 
CREATE TABLE Subscribe(
	ID INT PRIMARY KEY IDENTITY(1,1), 
	Email NVARCHAR(150),
	CreatedDate DATETIME
)
GO
CREATE TABLE System_Setting(
	SettingKey NVARCHAR(50) PRIMARY KEY NOT NULL,
	SettingValue NVARCHAR(MAX),
	SettingDescription NVARCHAR(250),
)