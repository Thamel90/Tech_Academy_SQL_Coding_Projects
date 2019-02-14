CREATE PROCEDURE proc5_loaned_by_branch
AS
	SELECT a1.BranchName, a1.BranchID, COUNT(a2.BranchID) AS 'Total Books Loaned Out'
	FROM tbl_libraryBranch a1
	LEFT JOIN tbl_bookLoans a2 ON a2.BranchID = a1.BranchID
	GROUP BY a1.BranchName, a1.BranchID;
GO

