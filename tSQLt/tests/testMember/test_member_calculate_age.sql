CREATE PROCEDURE testmember.[test calculate member age]
AS
BEGIN
------Assemble
  DECLARE @date1 DATETIME
  DECLARE @date2 DATETIME
  DECLARE @expected INT
  DECLARE @result INT

  SET @date1 = '1983-09-06 00:00:00.000'
  SET @date2 = '2018-07-20 00:00:00.000'

  SET @expected = 34
  
------Act
	SET @result = ([dbo].[GetMemberAge] (@date1,@date2))
  
------Assert
	EXEC tSQLt.AssertEquals @expected, @result;
  
END;