DROP TABLE IF EXISTS `Students`;
CREATE TABLE Students (
	UIN INTEGER PRIMARY KEY, 
	studentName VARCHAR(50),
	Gender VARCHAR(10), 
	Standing VARCHAR(30), 
	Major VARCHAR(40), 
	GPA DECIMAL(4,2)
);

DROP TABLE IF EXISTS `Skills`;
CREATE TABLE Skills (
	skillName VARCHAR(100) PRIMARY KEY
);

DROP TABLE IF EXISTS `Company`;
CREATE TABLE Company (
	companyID INTEGER PRIMARY KEY, 
	companyName VARCHAR(100)
);

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE jobs (
	jobID INTEGER, 
	companyID INTEGER NOT NULL,
	jobname VARCHAR(100), 
	location VARCHAR(100), 
	type VARCHAR(50), 
	field VARCHAR(40), 
	title VARCHAR(100),
	PRIMARY KEY (jobid, companyid),
	FOREIGN KEY (companyid) REFERENCES company(companyid) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Skilled`;
CREATE TABLE Skilled (
	UIN INTEGER NOT NULL, 
	skillName VARCHAR(100) NOT NULL,
	proficiency VARCHAR(20),
	PRIMARY KEY (UIN, skillName)
);

DROP TABLE IF EXISTS `Requires`;
CREATE TABLE Requires (
	jobID INTEGER NOT NULL, 
	skillName VARCHAR(100) NOT NULL,
	level INTEGER,
	PRIMARY KEY (jobID, skillName)
);




drop table Students;
drop table skills;
drop table skilled;
drop table jobs;
drop table Company;
drop table Requires;








