CREATE PROCEDURE [testmember].[test calculate average members age]
AS
BEGIN
  --Assemble
	DECLARE @Expected FLOAT = 16.5

	EXEC tSQLt.SpyProcedure 'dbo.spSumMemberAges', 'SET @total = 66';
  
  --Act
	DECLARE @total INT
	EXEC [dbo].[spSumMemberAges] @total = @total OUT;

	DECLARE @numberOfMembers INT = 4

	DECLARE @average FLOAT
	EXEC [dbo].[spAverageMemberAges] @numberOfMembers, @total, @average = @average OUT;
  
  --Assert
  EXEC tSQLt.AssertEquals @Expected , @average
 
END;