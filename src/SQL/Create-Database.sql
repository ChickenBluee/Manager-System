CREATE DATABASE Manager_System COLLATE Vietnamese_CI_AS;
USE Manager_System;

---------------------------------------------------------------
CREATE TABLE ROLE_ACCOUNT (
    ROLE_NAME NVARCHAR(50) NOT NULL PRIMARY KEY
);
---------------------------------------------------------------
CREATE TABLE ACCOUNT (
    ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    _ACCOUNT_ NVARCHAR(150) NOT NULL UNIQUE, 
    _PASSWORD_ NVARCHAR(255) NOT NULL,
	CREATEDTIME DATETIME DEFAULT GETDATE(),
	_ROLE_ NVARCHAR(50) DEFAULT N'user',
	CONSTRAINT FK_ROLE_ACCOUNT FOREIGN KEY (_ROLE_) REFERENCES ROLE_ACCOUNT(ROLE_NAME)
);
