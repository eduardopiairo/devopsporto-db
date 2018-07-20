CREATE PROCEDURE [dbo].[spAverageMemberAges] (
@numberOfMembers INT,
@totalOfAges INT,
@average FLOAT OUT
)
AS
BEGIN
	
	SET @average = (CAST(@totalOfAges AS float) / CAST(@numberOfMembers AS float)) 
END


