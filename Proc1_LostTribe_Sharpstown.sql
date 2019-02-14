CREATE PROCEDURE proc1_Lost_Tribe_Sharpstown
AS
SELECT Number_Of_Copies AS 'Copies of The Lost Tribe in Sharpstown' FROM tbl_bookCopies 
	WHERE BookID = 116 AND BranchID = 2;
GO
