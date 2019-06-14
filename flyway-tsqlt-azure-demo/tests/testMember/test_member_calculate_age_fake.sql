CREATE OR ALTER FUNCTION testmember.[Fake_GetMemberAge] (@Date1 DATETIME, @Date2 DATETIME)
RETURNS INT 
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result INT

	SET @result = 15

	-- Return the result of the function
	RETURN @result

END
GO
