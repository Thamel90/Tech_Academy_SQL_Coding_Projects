CREATE PROCEDURE proc3_check_0_borrowed
AS
	SELECT tbl_borrowers.CardNo, tbl_borrowers.FullName FROM tbl_borrowers
	WHERE tbl_borrowers.CardNo NOT IN 
		(SELECT tbl_bookLoans.CardNo FROM tbl_bookLoans);
GO