CREATE OR ALTER PROCEDURE [testmember].[test calculate the sum of all members ages]
AS
BEGIN
------Assemble
	DECLARE @allMemberAges INT
	DECLARE @Expected INT

	SET @Expected = 30
	
	-- "dbo.GetMemberAge" depends on the stored values in
	-- the "dbo.Member" table. To avoid this dependency, "dbo.GetMemberAge"
	-- is swapped by a fake function: "testmember.Fake_GetMemberAge"
	EXEC tSQLt.FakeFunction 'dbo.GetMemberAge', 'testmember.Fake_GetMemberAge';
  
------Act
	DECLARE @total INT
	EXEC [dbo].[spSumMemberAges] @total = @total OUT;

------Assert
  EXEC tSQLt.AssertEquals @Expected, @total
  
END;