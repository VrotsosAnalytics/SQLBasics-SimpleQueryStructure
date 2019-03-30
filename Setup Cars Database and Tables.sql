--==============================
--Step 1: CREATE DATABASE
--==============================

CREATE DATABASE Cars

--==============================
--Step 2: CREATE & INSERT VALUES into Manufacturer Table
--==============================
USE Cars
CREATE TABLE Manufacturer
(
	ID int 
	,Name varchar(15)
	,PRIMARY KEY (ID)
)

INSERT INTO Manufacturer VALUES (1,'Ford')
INSERT INTO Manufacturer VALUES (2,'Toyota')
INSERT INTO Manufacturer VALUES (3,'Honda')
INSERT INTO Manufacturer VALUES (4,'BMW')


--==============================
--Step 3: CREATE & INSERT VALUES into Owners Table
--==============================
USE Cars
CREATE TABLE Owners
(
	ID int 
	,Name varchar(15)
	,PRIMARY KEY (ID)
)

INSERT INTO Owners VALUES (1,'Julie')
INSERT INTO Owners VALUES (2,'Frank')
INSERT INTO Owners VALUES (3,'Gavin')
INSERT INTO Owners VALUES (4,'Kyle')
INSERT INTO Owners VALUES (5,'Lily')
INSERT INTO Owners VALUES (6,'Sarah')
INSERT INTO Owners VALUES (7,'Zach')
INSERT INTO Owners VALUES (8,'Keith')
INSERT INTO Owners VALUES (9,'Lauren')
INSERT INTO Owners VALUES (10,'Sam')
INSERT INTO Owners VALUES (11,'Victor')
INSERT INTO Owners VALUES (12,'Bobby')


--==============================
--Step 4: CREATE & INSERT VALUES into Models Table
--==============================
USE Cars
CREATE TABLE Models
(
	ID int 
	,ManufacturerID int
	,VehicleTypeID int
	,Name varchar(50)
	,MSRP money
	,PRIMARY KEY (ID)
)

INSERT INTO Models VALUES (1,1,1,'Taurus',27595)
INSERT INTO Models VALUES (2,1,1,'Focus',17860)
INSERT INTO Models VALUES (3,1,2,'Mustang',25585)
INSERT INTO Models VALUES (4,1,4,'Escape',23850)
INSERT INTO Models VALUES (5,1,4,'Explorer',31990)
INSERT INTO Models VALUES (6,1,3,'F-150',27610)
INSERT INTO Models VALUES (7,2,1,'Yaris',15635)
INSERT INTO Models VALUES (8,2,1,'Camry',23495)
INSERT INTO Models VALUES (9,2,2,'86',26255)
INSERT INTO Models VALUES (10,2,3,'Tacoma',25200)
INSERT INTO Models VALUES (11,2,4,'RAV4',24510)
INSERT INTO Models VALUES (12,2,4,'Highlander',31030)
INSERT INTO Models VALUES (13,3,1,'Accord',23570)
INSERT INTO Models VALUES (14,3,2,'Accord',24125)
INSERT INTO Models VALUES (15,3,1,'Civic',18840)
INSERT INTO Models VALUES (16,3,2,'Civic Si',24100)
INSERT INTO Models VALUES (17,3,3,'Ridgeline',29730)
INSERT INTO Models VALUES (18,3,5,'Gold Wing',23500)
INSERT INTO Models VALUES (19,3,5,'Rebel 500',6099)
INSERT INTO Models VALUES (20,3,5,'CBR600RR',11799)
INSERT INTO Models VALUES (21,4,1,'3',34900)
INSERT INTO Models VALUES (22,4,1,'7',83100)
INSERT INTO Models VALUES (23,4,2,'M3',54500)
INSERT INTO Models VALUES (24,4,2,'Z4',49700)
INSERT INTO Models VALUES (25,4,4,'X',33900)
INSERT INTO Models VALUES (26,4,5,'R NINE T',15495)
INSERT INTO Models VALUES (27,4,5,'S 1000 RR',15995)

--==============================
--Step 5: CREATE & INSERT VALUES into Vehicles Table
--==============================
USE Cars
CREATE TABLE Vehicles
(
	ID int 
	,OwnerID int
	,ModelID int
	,Mileage bigint
	,LastService datetime2
	,PurchaseDate datetime2
	,PurchasePrice money
	,PRIMARY KEY (ID)
)

INSERT INTO Vehicles VALUES (1,1,1,137895,'2018-01-15 00:00:00','2006-06-15 00:00:00',25000)
INSERT INTO Vehicles VALUES (2,1,24,10000,'2017-01-01 00:00:00','2014-12-20 00:00:00',45000)
INSERT INTO Vehicles VALUES (3,2,8,66785,'2017-12-10 00:00:00','2008-08-15 00:00:00',27595)
INSERT INTO Vehicles VALUES (4,3,12,40000,'2017-07-18 00:00:00','2009-05-19 00:00:00',33000)
INSERT INTO Vehicles VALUES (5,3,19,25000,'2017-08-12 00:00:00','2012-05-19 00:00:00',6500)
INSERT INTO Vehicles VALUES (6,4,18,122573,'2018-01-19 00:00:00','2010-07-01 00:00:00',22500)
INSERT INTO Vehicles VALUES (7,5,7,67081,'2017-11-30 00:00:00','2013-10-15 00:00:00',15300)
INSERT INTO Vehicles VALUES (8,6,10,85000,'2017-09-15 00:00:00','2009-02-18 00:00:00',25000)


--==============================
--Step 6: CREATE & INSERT VALUES into VehicleType Table
--==============================
USE Cars
CREATE TABLE VehicleType
(
	ID int 
	,Name varchar(25)
	,PRIMARY KEY (ID)
)


INSERT INTO VehicleType VALUES (1,'Sedan')
INSERT INTO VehicleType VALUES (2,'Coup')
INSERT INTO VehicleType VALUES (3,'Truck')
INSERT INTO VehicleType VALUES (4,'SUV')
INSERT INTO VehicleType VALUES (5,'Motorcycle')


