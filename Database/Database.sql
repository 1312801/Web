--drop database Web
create database Web
GO
use Web
GO
create table Customer
(
ID int PRIMARY KEY IDENTITY(1,1),
Fullname nvarchar(50),
Username nvarchar(50),
DOB datetime,
Userpassword nvarchar(50),
AdminUser int,
IdentityNumber varchar(10),
AddressCus nvarchar(50),
Phone nvarchar(10),
Email nvarchar(50)
)

create table Product
(
ID int PRIMARY KEY IDENTITY(1,1),
ProductName nvarchar(50),
CategoryID int,
Quantity int,
Photo nvarchar(100),
DescriptionProduct nvarchar(1000),
ReleaseDate datetime,
Flag int,
Star int,
Price money
)

create table Category
(
ID int PRIMARY KEY IDENTITY(1,1),
CategoryName nvarchar(50)
)

create table Cart
(
ID int PRIMARY KEY IDENTITY(1,1),
ProductID int, 
CustomerID int,
Quantity int
)
create table Bill
(
ID int PRIMARY KEY IDENTITY(1,1),
CartID int,
TotalPrice money
)

-- khoa ngoai

alter table dbo.Product
add constraint FK_Category_Product
foreign key (CategoryID)
references dbo.Category(ID)

alter table dbo.Cart
add constraint FK_Cart_Product
foreign key (ProductID)
references dbo.Product(ID)

alter table dbo.Cart
add constraint FK_Cart_Customer
foreign key (CustomerID)
references dbo.Customer(ID)

alter table dbo.Bill
add constraint FK_Bill_Cart
foreign key (CartID)
references dbo.Cart(ID)

-- nhap Lieu
 --customer
INSERT INTO dbo.Customer(FULLNAME, USERNAME,DOB, USERPASSWORD, ADMINUSER, IDENTITYNUMBER, ADDRESSCUS, PHONE,EMAIL) 
VALUES(N'Nguyễn Văn Anh', 'nvanh','11-20-1997', '123456', 0, '123456789', N'Việt Nam', '0326312355', 'nvanh@gmail.com');
INSERT INTO dbo.Customer(FULLNAME, USERNAME, DOB,USERPASSWORD, ADMINUSER, IDENTITYNUMBER, ADDRESSCUS, PHONE,EMAIL) 
VALUES(N'Nguyễn Thành Thắng', 'ntthang','10-08-1998', '123456', 0, '123456777', N'Việt Nam', '0328882355', 'ntthang@gmail.com');
INSERT INTO dbo.Customer(FULLNAME, USERNAME, DOB,USERPASSWORD, ADMINUSER, IDENTITYNUMBER, ADDRESSCUS, PHONE,EMAIL) 
VALUES(N'Bùi Anh Nam', 'banam','02-14-1996', '123456', 0, '155586789', 'Việt Nam', '0586662355', 'banam@gmail.com');
INSERT INTO dbo.Customer(FULLNAME, USERNAME, DOB, USERPASSWORD, ADMINUSER, IDENTITYNUMBER, ADDRESSCUS, PHONE,EMAIL) 
VALUES(N'Hoàng Thành Tâm', 'httam','02-11-1995', '123456', 0, '185497562', N'Việt Nam', '0568589856', 'httam@gmail.com');
INSERT INTO dbo.Customer(FULLNAME, USERNAME, DOB,USERPASSWORD, ADMINUSER, IDENTITYNUMBER, ADDRESSCUS, PHONE,EMAIL) 
VALUES(N'Vũ Hồng Lan', 'vhlan','04-11-1999', '123456', 0, '185477772', N'Việt Nam', '0562023256', 'vhlan@gmail.com');
--category
INSERT INTO dbo.Category(CategoryName)
VALUES (N'OPPO');
INSERT INTO dbo.Category(CategoryName)
VALUES (N'XIAOMI');
INSERT INTO dbo.Category(CategoryName)
VALUES (N'IPHONE');
INSERT INTO dbo.Category(CategoryName)
VALUES (N'SAMSUNG');
INSERT INTO dbo.Category(CategoryName)
VALUES (N'VIVO');
--SELECT * FROM Category
--PRODUCT
select * from product
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'IPHONE 7 PLUS', 3, 5, N'Iphone 7 Plus 32GB camera kép, cấu hình mạnh','2018-10-11' , 0, 5, 16000000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'IPHONE XS', 3, 3, N'Iphone XS 64GB Màn hình OLED: 5.8 inch Super Retina (2436 x 1125), 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10, cấu hình mạnh','2018-11-11' , 0, 5, 25000000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'IPHONE XS MAX', 3, 4, N'Iphone XS MAX 256GB Cảm biến nhận diện khuôn mặt Face ID, cấu hình mạnh','2018-11-11' , 0, 5, 30000000);

INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'OPPO F9', 1, 2, N'Oppo F9(A11) 64GB Màn hình: 6.3 inch (Màn hình giọt nước), FHD+ 2340 x 1080 pixels','2017-11-11' , 0, 4, 7600000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'OPPO F7', 1, 2, N'Oppo F7 64GB màn hình tràn viền có kích thước 6.23 inches, độ phân giải Full HD+ (2280 x 1080 pixels)','2017-12-15' , 0, 4, 6200000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'OPPO A3S', 1, 2, N'Oppo A3s 16GB Màn hình: 6.2 inch (Màn hình siêu tràn), HD+','2017-06-15' , 0, 5, 3690000);

INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'XIAOMI REDMI NOTE 5', 2, 3, N'Xiaomi redmi note 5 32GB Màn hình: IPS LCD, 5.99", Full HD+','2018-02-09' , 0, 5, 3990000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'XIAOMI MI 8', 2, 4, N'Xiaomi mi 8 64GB Màn hình: 6.21 inch Full HD+ (1080 x 2248 pixels)','2018-07-21' , 0, 5, 8390000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'XIAOMI MI MIX 2S', 2, 4, N'Xiaomi mi mix 2s 64GB Màn hình: LCD 5.99 inch Full HD+','2018-10-20' , 0, 5, 10390000);

INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'SAMSUNG GALAXY NOTE 9', 4, 4, N'SamSung Galaxy Note 9 512GB Màn hình: 6.4", 2K+ (1440 x 2960 Pixels)','2018-10-10' , 0, 5, 28490000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'SAMSUNG GALAXY J8', 4, 4, N'SamSung Galaxy J8 32GB Màn hình: Super AMOLED, 6.0", HD+','2018-08-10' , 0, 5, 6200000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'SAMSUNG GALAXY A8', 4, 2, N'SamSung Galaxy A8 32GB Màn hình: Super AMOLED, 5.6", Full HD+','2018-05-19' , 0, 5, 10900000);

INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'VIVO V11', 5, 2, N'Vivo V11 128GB Màn hình: Super AMOLED, 6.41", Full HD+','2018-03-18' , 0, 5, 10900000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'VIVO Y71', 5, 3, N'Vivo Y71 16GB Màn hình: IPS LCD, 6.0", HD+','2018-01-18' , 0, 5, 3290000);
INSERT INTO dbo.Product(ProductName, CategoryID, Quantity, DescriptionProduct,ReleaseDate,Flag, Star, Price)
VALUES (N'VIVO V9', 5, 1, N'Vivo V9 64GB Màn hình: IPS LCD, 6.3", Full HD+','2018-09-18' , 0, 5, 7490000);

--cart
INSERT INTO dbo.Cart(ProductID, CustomerID, Quantity)
VALUES (1,1,1);
INSERT INTO dbo.Cart(ProductID, CustomerID, Quantity)
VALUES (2,2,1);
INSERT INTO dbo.Cart(ProductID, CustomerID, Quantity)
VALUES (3,3,2);
INSERT INTO dbo.Cart(ProductID, CustomerID, Quantity)
VALUES (4,4,1);
INSERT INTO dbo.Cart(ProductID, CustomerID, Quantity)
VALUES (5,5,1);
--SELECT * FROM CART

--bill
INSERT INTO dbo.Bill(CartID)
VALUES(1);
INSERT INTO dbo.Bill(CartID)
VALUES(2);
INSERT INTO dbo.Bill(CartID)
VALUES(3);
INSERT INTO dbo.Bill(CartID)
VALUES(4);