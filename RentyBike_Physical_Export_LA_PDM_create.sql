-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-12-17 19:20:38.237
-- tables
-- Table: Bike
CREATE TABLE Bike (
    b_LicensePlate varchar(12) NOT NULL,
    b_Brand varchar(128) NOT NULL,
    b_Type varchar(128) NOT NULL,
    b_InitialCondition longtext NOT NULL,
    b_GPScode char(2) NOT NULL,
    b_Price decimal(9, 2) NOT NULL,
    Owner_o_NIK char(16) NOT NULL,
    CONSTRAINT Bike_pk PRIMARY KEY (b_LicensePlate)
);
-- Table: Customer
CREATE TABLE Customer (
    c_IdentityNumber varchar(16) NOT NULL,
    c_Name varchar(255) NOT NULL,
    c_Phone varchar(20) NOT NULL,
    c_Address varchar(255) NOT NULL,
    c_CitizenshipCode char(3) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (c_IdentityNumber)
);
-- Table: Employee
CREATE TABLE Employee (
    e_NIK char(16) NOT NULL,
    e_Name varchar(255) NOT NULL,
    e_Address varchar(255) NOT NULL,
    e_Phone varchar(15) NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (e_NIK)
);
-- Table: Owner
CREATE TABLE Owner (
    o_NIK char(16) NOT NULL,
    o_Name varchar(255) NOT NULL,
    o_Address varchar(255) NOT NULL,
    o_Phone varchar(15) NOT NULL,
    CONSTRAINT Owner_pk PRIMARY KEY (o_NIK)
);
-- Table: ReturnBike
CREATE TABLE ReturnBike (
    r_ID int NOT NULL,
    r_ReturnDate date NOT NULL,
    r_isLate boolean NOT NULL,
    r_Penalty decimal(9, 2) NULL,
    r_EndCondition longtext NOT NULL,
    Ticket_t_ID int NOT NULL,
    CONSTRAINT ReturnBike_pk PRIMARY KEY (r_ID, Ticket_t_ID)
);
-- Table: Ticket
CREATE TABLE Ticket (
    t_ID int NOT NULL,
    t_RentDate date NOT NULL,
    t_ExpReturnDate date NOT NULL,
    t_TotalPrice decimal(9, 2) NOT NULL,
    Bike_b_LicensePlate varchar(12) NOT NULL,
    Customer_c_IdentityNumber varchar(16) NOT NULL,
    Employee_e_NIK char(16) NOT NULL,
    CONSTRAINT Ticket_pk PRIMARY KEY (t_ID)
);
-- foreign keys
-- Reference: Bike_Owner (table: Bike)
ALTER TABLE Bike
ADD CONSTRAINT Bike_Owner FOREIGN KEY Bike_Owner (Owner_o_NIK) REFERENCES Owner (o_NIK);
-- Reference: ReturnBike_Ticket (table: ReturnBike)
ALTER TABLE ReturnBike
ADD CONSTRAINT ReturnBike_Ticket FOREIGN KEY ReturnBike_Ticket (Ticket_t_ID) REFERENCES Ticket (t_ID);
-- Reference: Ticket_Bike (table: Ticket)
ALTER TABLE Ticket
ADD CONSTRAINT Ticket_Bike FOREIGN KEY Ticket_Bike (Bike_b_LicensePlate) REFERENCES Bike (b_LicensePlate);
-- Reference: Ticket_Customer (table: Ticket)
ALTER TABLE Ticket
ADD CONSTRAINT Ticket_Customer FOREIGN KEY Ticket_Customer (Customer_c_IdentityNumber) REFERENCES Customer (c_IdentityNumber);
-- Reference: Ticket_Employee (table: Ticket)
ALTER TABLE Ticket
ADD CONSTRAINT Ticket_Employee FOREIGN KEY Ticket_Employee (Employee_e_NIK) REFERENCES Employee (e_NIK);
-- End of file.