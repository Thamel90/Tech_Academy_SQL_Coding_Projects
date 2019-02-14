CREATE PROCEDURE proc2_Lost_Tribe_EachBranch
AS
	SELECT a2.BranchName, a1.Number_Of_Copies AS 'Copies of The Lost Tribe'
		FROM tbl_bookCopies a1
		INNER JOIN tbl_libraryBranch a2 ON a2.BranchID = a1.BranchID
		WHERE BookID = 116;
		
GO