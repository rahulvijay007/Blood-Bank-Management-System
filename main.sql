create database vampire;
use vampire;
CREATE TABLE IF NOT EXISTS `Blood_Bank_Information` (
    `Blood_Bank_ID` INT,
    `Location` VARCHAR(13) CHARACTER SET utf8,
    `Blood_Bank_Contact_Number` VARCHAR(12) CHARACTER SET utf8,
    `Blood_Bank_Address` VARCHAR(25) CHARACTER SET utf8,
    primary key(Blood_Bank_ID)
);
INSERT INTO `Blood_Bank_Information` VALUES (1,'City Center','555-123-4567','789 Oak St, City'),
	(2,'Town Square','555-987-6543','456 Elm St, Town'),
	(3,'Village Plaza','555-321-6789','123 Main St, Village'),
	(4,'Riverside','555-555-5555','101 River Rd, Riverside'),
	(5,'Parkside','555-123-9876','567 Park Ave, Parkside'),
	(6,'Lakeside','555-987-3210','890 Lakeview Dr, Lakeside'),
	(7,'Hilltop','555-789-0123','456 Hilltop Rd, Hilltop'),
	(8,'Meadow','555-654-3210','789 Meadow Ln, Meadow'),
	(9,'Oceanview','555-012-3456','123 Ocean Ave, Oceanview'),
	(10,'Mountain','555-456-7890','456 Mountain Rd, Mountain');

CREATE TABLE IF NOT EXISTS `Donors` (
    `Donor_ID` INT not NULL,
    `First_Name` VARCHAR(11) CHARACTER SET utf8,
    `Last_Name` VARCHAR(9) CHARACTER SET utf8,
    `Date_of_Birth` DATETIME,
    `Gender` VARCHAR(6) CHARACTER SET utf8,
    `Blood_Group` VARCHAR(3) CHARACTER SET utf8,
    `Contact_Number` VARCHAR(12) CHARACTER SET utf8,
    `Address` VARCHAR(21) CHARACTER SET utf8,
    primary key (donor_ID)
);
INSERT INTO `Donors` VALUES (1,'John','Smith','1990-05-15 00:00:00','Male','A+','123-456-7890','123 Main St, City'),
	(2,'Emily','Johnson','1985-10-20 00:00:00','Female','O-','456-789-0123','456 Elm St, Town'),
	(3,'Michael','Williams','1988-03-12 00:00:00','Male','B+','789-012-3456','789 Oak St, Village'),
	(4,'Jessica','Brown','1992-07-04 00:00:00','Female','AB-','987-654-3210','456 Pine St, City'),
	(5,'David','Davis','1983-12-30 00:00:00','Male','O+','654-321-0987','321 Oak St, Town'),
	(6,'Sarah','Wilson','1995-09-18 00:00:00','Female','A-','321-654-9870','789 Maple St, City'),
	(7,'Christopher','Anderson','1980-02-25 00:00:00','Male','B-','012-345-6789','456 Cedar St, Town'),
	(8,'Ashley','Martinez','1991-06-08 00:00:00','Female','AB+','987-654-3210','123 Pine St, Village'),
	(9,'Matthew','Taylor','1975-11-17 00:00:00','Male','A+','789-012-3456','654 Elm St, City'),
	(10,'Amanda','Thomas','1987-04-03 00:00:00','Female','B+','456-789-0123','321 Maple St, Town'),
	(11,'Daniel','Garcia','1993-08-22 00:00:00','Male','O-','321-654-9870','789 Cedar St, Village'),
	(12,'Melissa','Rodriguez','1982-01-12 00:00:00','Female','AB-','654-321-0987','456 Oak St, City'),
	(13,'Ryan','Lopez','1978-10-27 00:00:00','Male','B+','012-345-6789','123 Pine St, Town'),
	(14,'Brittany','Hernandez','1996-03-15 00:00:00','Female','A+','987-654-3210','456 Elm St, Village'),
	(15,'Justin','Martinez','1989-07-08 00:00:00','Male','O+','789-012-3456','321 Cedar St, City'),
	(16,'Samantha','Smith','1994-05-20 00:00:00','Female','AB+','456-789-0123','789 Maple St, Town'),
	(17,'Nicholas','Johnson','1986-12-10 00:00:00','Male','B-','321-654-9870','123 Oak St, Village'),
	(18,'Lauren','Lee','1981-09-05 00:00:00','Female','A-','012-345-6789','456 Pine St, City'),
	(19,'Brandon','Wilson','1990-04-29 00:00:00','Male','O+','789-012-3456','789 Elm St, Town'),
	(20,'Megan','Brown','1987-02-14 00:00:00','Female','B+','456-789-0123','123 Cedar St, City');

CREATE TABLE IF NOT EXISTS `Recipients` (
    `Recipient_Number` INT,
    `First_Name` VARCHAR(11) CHARACTER SET utf8,
    `Last_Name` VARCHAR(9) CHARACTER SET utf8,
    `Gender` VARCHAR(6) CHARACTER SET utf8,
    `Date_of_Birth` DATETIME,
    `Patient_Blood_Group` VARCHAR(3) CHARACTER SET utf8,
    `Contact_Number` VARCHAR(12) CHARACTER SET utf8,
    `Address` VARCHAR(21) CHARACTER SET utf8,
    `Medical_History` VARCHAR(29) CHARACTER SET utf8,
    primary key(recipient_Number)
);
INSERT INTO `Recipients` VALUES (1,'Sarah','Davis','Female','1987-07-25 00:00:00','AB+','321-654-9870','321 Pine St, City','Asthma, Hypertension'),
	(2,'David','Brown','Male','1995-12-10 00:00:00','A-','654-987-3210','654 Maple St, Town','Diabetes, Heart Condition'),
	(3,'Jessica','Lee','Female','1980-09-05 00:00:00','B+','987-321-6540','987 Cedar St, Village','None'),
	(4,'Michael','Johnson','Male','1988-04-20 00:00:00','O+','456-789-0123','456 Oak St, City','Hypertension'),
	(5,'Emily','Martinez','Female','1992-01-30 00:00:00','AB-','789-012-3456','789 Pine St, Town','Diabetes, Asthma'),
	(6,'Daniel','Taylor','Male','1985-11-15 00:00:00','A+','012-345-6789','012 Elm St, Village','None'),
	(7,'Ashley','Wilson','Female','1979-08-08 00:00:00','B-','321-654-9870','321 Maple St, City','Heart Condition, Hypertension'),
	(8,'Christopher','Brown','Male','1994-03-22 00:00:00','O-','654-987-3210','654 Cedar St, Town','Diabetes'),
	(9,'Amanda','Garcia','Female','1983-06-12 00:00:00','AB+','987-321-6540','987 Oak St, Village','None'),
	(10,'Matthew','Thomas','Male','1990-09-29 00:00:00','B+','456-789-0123','456 Pine St, City','Hypertension, Diabetes'),
	(11,'Melissa','Hernandez','Female','1982-04-15 00:00:00','A-','789-012-3456','789 Elm St, Town','Asthma, Heart Condition'),
	(12,'Ryan','Lopez','Male','1976-11-08 00:00:00','O+','012-345-6789','012 Cedar St, Village','None'),
	(13,'Brittany','Smith','Female','1989-05-20 00:00:00','AB+','321-654-9870','321 Oak St, City','None'),
	(14,'Justin','Johnson','Male','1987-12-10 00:00:00','B-','654-987-3210','654 Maple St, Town','Hypertension'),
	(15,'Samantha','Lee','Female','1994-09-05 00:00:00','O-','987-321-6540','987 Pine St, Village','None'),
	(16,'Nicholas','Martinez','Male','1980-02-29 00:00:00','A+','456-789-0123','456 Elm St, City','Asthma, Diabetes'),
	(17,'Lauren','Taylor','Female','1992-10-17 00:00:00','B+','789-012-3456','789 Cedar St, Town','None'),
	(18,'Brandon','Brown','Male','1978-03-15 00:00:00','AB-','012-345-6789','012 Pine St, City','Hypertension'),
	(19,'Megan','Davis','Female','1986-07-08 00:00:00','O+','321-654-9870','321 Maple St, Village','Diabetes, Heart Condition'),
	(20,'Joshua','Wilson','Male','1991-12-14 00:00:00','A-','654-987-3210','654 Oak St, City','None');
    
CREATE TABLE IF NOT EXISTS `Blood_Donations` (
    `Donation_Number` INT not null,
    `Donor_ID` INT ,
    `Donation_Date` DATETIME,
    `Blood_Group` VARCHAR(3) CHARACTER SET utf8,
    `Hemoglobin_Level` NUMERIC(3, 1),
    `Status_of_Donation` VARCHAR(8) CHARACTER SET utf8,
    `Blood_Unit_Expiration_Date` DATETIME ,
	PRIMARY KEY (Donation_number),
    FOREIGN KEY (Donor_ID) REFERENCES Donors(Donor_ID)
);
INSERT INTO `Blood_Donations` VALUES (1,1,'2024-03-10 00:00:00','A+',13.5,'Accepted','2024-09-10 00:00:00'),
	(2,2,'2024-02-20 00:00:00','O-',12.0,'Accepted','2024-08-20 00:00:00'),
	(3,3,'2024-01-05 00:00:00','B+',14.2,'Expired','2024-07-05 00:00:00'),
	(4,4,'2024-04-02 00:00:00','AB-',12.8,'Accepted','2024-10-02 00:00:00'),
	(5,5,'2024-03-15 00:00:00','O+',13.7,'Accepted','2024-09-15 00:00:00'),
	(6,6,'2024-02-28 00:00:00','A-',14.5,'Accepted','2024-08-28 00:00:00'),
	(7,7,'2024-01-10 00:00:00','B-',12.3,'Expired','2024-07-10 00:00:00'),
	(8,8,'2024-04-05 00:00:00','AB+',13.9,'Accepted','2024-10-05 00:00:00'),
	(9,9,'2024-03-20 00:00:00','A+',14.2,'Accepted','2024-09-20 00:00:00'),
	(10,10,'2024-02-12 00:00:00','B+',13.0,'Accepted','2024-08-12 00:00:00'),
	(11,11,'2024-01-15 00:00:00','O-',12.6,'Expired','2024-07-15 00:00:00'),
	(12,12,'2024-04-18 00:00:00','AB-',13.4,'Accepted','2024-10-18 00:00:00'),
	(13,13,'2024-03-22 00:00:00','B+',14.8,'Accepted','2024-09-22 00:00:00'),
	(14,14,'2024-02-05 00:00:00','A+',12.9,'Accepted','2024-08-05 00:00:00'),
	(15,15,'2024-01-28 00:00:00','O+',13.2,'Expired','2024-07-28 00:00:00'),
	(16,16,'2024-04-08 00:00:00','A-',14.1,'Accepted','2024-10-08 00:00:00'),
	(17,17,'2024-03-18 00:00:00','B-',13.5,'Accepted','2024-09-18 00:00:00'),
	(18,18,'2024-02-10 00:00:00','AB+',12.7,'Expired','2024-08-10 00:00:00'),
	(19,19,'2024-01-25 00:00:00','A+',14.6,'Accepted','2024-07-25 00:00:00'),
	(20,20,'2024-04-12 00:00:00','B+',13.3,'Accepted','2024-10-12 00:00:00');

#Donors Table

#Create:
INSERT INTO Donors (Donor_ID, First_Name, Last_Name, Date_of_Birth, Gender, Blood_Group, Contact_Number, Address)
VALUES (21, 'John', 'Smith', '1990-05-15', 'Male', 'A+', '123-456-7890', '123 Main St, City');

#Read:
SELECT * FROM Donors WHERE Donor_ID = 1;

#Update:
UPDATE Donors
SET Contact_Number = '987-654-3210'
WHERE Donor_ID = 1;

#Delete:
DELETE FROM Donors WHERE Donor_ID = 21;


#Recipients Table:

#Create:
INSERT INTO Recipients (Recipient_Number, First_Name, Last_Name, Gender, Date_of_Birth, Patient_Blood_Group, Contact_Number, Address, Medical_History)
VALUES (21, 'Sarah', 'Davis', 'Female', '1987-07-25', 'AB+', '321-654-9870', '321 Pine St, City', 'Asthma, Hypertension');

#Read:
SELECT * FROM Recipients WHERE Recipient_Number = 1;

#Update:
UPDATE Recipients
SET Medical_History = 'Asthma'
WHERE Recipient_Number = 1;

#Delete:
DELETE FROM Recipients WHERE Recipient_Number = 1;


#Blood Donations Table:


#Create:
INSERT INTO Blood_Donations (Donation_Number, Donor_ID, Donation_Date, Blood_Group, Hemoglobin_Level, Status_of_Donation, Blood_Unit_Expiration_Date)
VALUES (21, 1, '2024-03-10', 'A+', 13.5, 'Accepted', '2024-09-10');

#Read:
SELECT * FROM Blood_Donations WHERE Donation_Number = 1;

#Update:
UPDATE Blood_Donations
SET Status_of_Donation = 'Expired'
WHERE Donation_Number = 1;

#Delete:
DELETE FROM Blood_Donations WHERE Donation_Number = 1;


#Blood Bank Information Table:


#Create:
INSERT INTO Blood_Bank_Information (Blood_Bank_ID, Location, Blood_Bank_Contact_Number, Blood_Bank_Address)
VALUES (21, 'City Center', '555-123-4567', '789 Oak St, City');

#Read:
SELECT * FROM Blood_Bank_Information WHERE Blood_Bank_ID = 1;

#Update:
UPDATE Blood_Bank_Information
SET Blood_Bank_Contact_Number = '555-765-4321'
WHERE Blood_Bank_ID = 1;

#Delete:
DELETE FROM Blood_Bank_Information WHERE Blood_Bank_ID = 1;

