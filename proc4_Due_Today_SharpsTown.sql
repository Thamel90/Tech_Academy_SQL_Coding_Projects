CREATE PROCEDURE proc4_sharpstown_due_today
AS
	SELECT a2.Title, a3.FullName, a3.Address
		FROM tbl_bookLoans a1
		INNER JOIN tbl_libraryBooks a2 ON a2.BookID = a1.BookID
		INNER JOIN tbl_borrowers a3 ON a3.CardNo = a1.CardNo
		WHERE a1.BranchID = 2 AND a1.DateDue = (GETDATE());
GO

