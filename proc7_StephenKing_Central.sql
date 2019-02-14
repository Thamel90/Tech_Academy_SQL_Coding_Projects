CREATE PROCEDURE proc7_StephenKing_Central
AS
	SELECT a3.Title, a2.AuthorName, a1.Number_Of_Copies AS 'Copies at Central Branch'
		FROM tbl_bookCopies a1
		INNER JOIN tbl_authors a2 ON a2.BookID = a1.BookID
		INNER JOIN tbl_libraryBooks a3 ON a3.BookID = a1.BookID
		WHERE a2.AuthorName = 'Stephen King' AND a1.BranchID = 1;
GO