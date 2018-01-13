ALTER TABLE BOOKING ADD COLUMN START_DATE DATETIME;
ALTER TABLE BOOKING ADD COLUMN END_DATE DATETIME;

CREATE TABLE BOOKING_TABLE_PLAN(
	ID BIGINT(20) NOT NULL AUTO_INCREMENT,
	FK_DOCUMENT BIGINT(20),
	FK_BOOKING BIGINT(20),
	TABLE_NUMBER VARCHAR(100),
	SALUTATION VARCHAR(255),
	FULLNAME VARCHAR(255),
	CONTACT VARCHAR(255),
	CONSTRAINT FOREIGN KEY (FK_BOOKING) REFERENCES BOOKING (ID),
	CONSTRAINT FOREIGN KEY (FK_DOCUMENT) REFERENCES EDGE_DOCUMENT (ID),
	PRIMARY KEY (ID)
);