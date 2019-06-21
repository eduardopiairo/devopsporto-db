CREATE OR ALTER PROCEDURE [testmember].[test calculate average members age]
AS
BEGIN
------Assemble
	DECLARE @Expected FLOAT = 16.5
	DECLARE @total INT
	DECLARE @numberOfMembers INT = 4
	DECLARE @average FLOAT

	EXEC tSQLt.SpyProcedure 'dbo.spSumMemberAges', 'SET @total = 66';
  
------Act
	EXEC [dbo].[spSumMemberAges] @total = @total OUT;

	EXEC [dbo].[spAverageMemberAges] @numberOfMembers, @total, @average = @average OUT;
  
  --Assert
  EXEC tSQLt.AssertEquals @Expected , @average
 
END;