CREATE SCHEMA HABITATOR01;
SET SCHEMA HABITATOR01;

CREATE TABLE USERS (
		ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) CONSTRAINT UPK PRIMARY KEY,
		NAME VARCHAR(128) NOT NULL,
		PASSWORD VARCHAR(20) NOT NULL
);

CREATE TABLE HABITS (
		ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) CONSTRAINT HPK PRIMARY KEY,
		USERNAME INTEGER NOT NULL CONSTRAINT foreign_key REFERENCES USERS,
		NAME VARCHAR(20) NOT NULL
);