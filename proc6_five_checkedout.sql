CREATE PROCEDURE proc6_five_checked_out
AS
	SELECT a2.CardNo, a1.FullName, a1.Address, COUNT(a2.CardNo) AS 'Total Books Checked Out'
		FROM tbl_borrowers a1
		RIGHT JOIN tbl_bookLoans a2 ON a2.CardNo = a1.CardNo
		GROUP BY a2.CardNo, a1.FullName, a1.Address
		HAVING COUNT(a2.CardNo) >= 5;
		
GO