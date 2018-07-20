CREATE PROCEDURE [dbo].[spGetAverageMembersAge] 
AS
	DECLARE @numberOfMembers INT
	DECLARE @average FLOAT
	DECLARE @total INT
	
	EXEC [dbo].[spSumMemberAges] @total = @total OUT;

	SET @numberOfMembers = (SELECT COUNT(MemberBirthDate) FROM dbo.Member WHERE MemberBirthDate IS NOT NULL)

	EXEC [dbo].[spAverageMemberAges] @numberOfMembers, @total, @average = @average OUT;

	SELECT @average AS 'Average'
