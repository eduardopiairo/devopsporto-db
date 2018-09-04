CREATE PROCEDURE [testmember].[test calculate the sum of all members ages]
AS
BEGIN
------Assemble
	DECLARE @allMemberAges INT
	DECLARE @Expected INT

	SET @Expected = 30
	
	EXEC tSQLt.FakeFunction 'dbo.GetMemberAge', 'testmember.Fake_GetMemberAge';
  
------Act
	DECLARE @total INT
	EXEC [dbo].[spSumMemberAges] @total = @total OUT;

------Assert
  EXEC tSQLt.AssertEquals @Expected, @total
  
END;