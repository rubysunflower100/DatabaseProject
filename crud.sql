INSERT INTO BookTable (BookID, Title, Author, CheckedOut, LastCheckedOutBy, LibBranch)
VALUES ('q', 'Who Could That Be At This Hour?', 'Lemony Snicket', false, 'a', 'f');
-- Note: in future, it might be nice to implement a way to add books without having to specify a value for LastCheckedOutBy

SELECT Title, Director
FROM MovieTable;


UPDATE BranchTable
SET DaysOpen = 'MTWRF'
WHERE BranchID = 'e';

DELETE FROM BookTable
WHERE BookID = 'i';