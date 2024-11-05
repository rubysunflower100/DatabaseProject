INSERT INTO PatronTable(PatronID, FirstName, LastName, DateJoined)
VALUES
	('a', 'Kaetlyn', 'Osmond', '12-25-2000'),
    ('b', 'Lindsey', 'Osmond', '12-26-2000'),
    ('c', 'Kaetlyn', 'Graham', '12-27-2000'),
    ('d', 'Lindsey', 'Graham', '12-28-2000');

INSERT INTO BranchTable(BranchID, Address, BranchName, DaysOpen)
VALUES
-- Values taken from the Wichita public library system, with some creative liberties
	('e', 'Advanced Learning Library', '711 W. 2nd, Wichita, KS 67203', 'MTWRFSU'),
    ('f', 'Alford Branch', '3447 S. Meridian, Wichita, KS 67217', 'MTWRFS'),
    ('g', 'Rockwell Branch', '5939 E. 9th, Wichita, KS 67208', 'MTWRFS'),
    ('h', 'Evergreen Community Center', '2601 N. Arkansas, Wichita, KS 67204', 'MTWRF');
    
INSERT INTO BookTable(BookID, Title, Author, CheckedOut, LastCheckedOutBy, LibBranch)
VALUES
	('i', 'Leviathan Wakes', 'James A. Corey', true, 'a', 'e'),
	('j', 'Leviathan Falls', 'James A. Corey', false, 'b', 'f'),
	('k', 'The Bad Beginning', 'Lemony Snicket', true, 'c', 'g'),
    ('l', 'Chasing the Prophecy', 'Brandon Mull', false, 'd', 'h');

INSERT INTO MovieTable(MovieID, Title, Director, CheckedOut, LastCheckedOutBy, LibBranch)
VALUES
	('m', 'Inception', 'Christopher Nolan', true, 'a', 'e'),
    ('n', 'Interstellar', 'Christopher Nolan', false, 'b', 'f'),
	('o', 'Titanic', 'James Cameron', true, 'c', 'g'),
	('p', 'Avengers: Endgame', 'Anthony Russo', false, 'd', 'h');