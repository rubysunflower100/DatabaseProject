CREATE DATABASE LibraryDB;
-- Note: I'm not entirely sure if these files all run properly, since I had some trouble getting them to run
-- If they do not, I definitely plan on fixing that issue before submitting the final step of the project.
CREATE TABLE PatronTable (
	PatronID CHAR(30),
	PRIMARY KEY(PatronID),
    FirstName CHAR(30),
    LastName CHAR(30),
    DateJoined CHAR(30)
);
-- FirstName, LastName, and DateJoined are all functionally dependent on PatronId


CREATE TABLE BranchTable (
	BranchID CHAR(30),
	PRIMARY KEY(BranchID),
    Address Char(100),
    BranchName Char(30),
    DaysOpen Char(30)
-- Sample values for DaysOpen: MTWRF, MTWR, MTWRFSU
-- All days except Thursday and Sunday are represented by their first letter
-- R = Thursday, U = Sunday
);
-- BranchID, Address, and BranchName are all functionally dependent on each other
-- DaysOpen is functionally dependent on all three

CREATE TABLE BookTable (
	BookID CHAR(30),
	PRIMARY KEY(BookID),
	Title CHAR(30),
    Author CHAR(30),
    CheckedOut bool,
    FOREIGN KEY(LastCheckedOutBy)
    REFERENCES PatronTable(PatronID),
    FOREIGN KEY(LibBranch)
    REFERENCES BranchTable(BranchID)
);
-- All other fields are functionally dependent on BookID; all fields are probably also functionally dependent on Title

CREATE TABLE MovieTable (
	MovieID CHAR(30),
	PRIMARY KEY(MovieID),
	Title CHAR(30),
    Director CHAR(30),
    CheckedOut bool,
    FOREIGN KEY(CheckedOutBy)
    REFERENCES PatronTable(PatronID),
    FOREIGN KEY(LibBranch)
    REFERENCES BranchTable(BranchID)
);

-- All other fields are functionally dependent on BookID; all fields are probably also functionally dependent on Title


