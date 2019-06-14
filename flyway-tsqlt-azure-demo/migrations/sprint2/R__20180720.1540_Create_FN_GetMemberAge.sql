CREATE OR ALTER FUNCTION [dbo].[GetMemberAge] (@Date1 DATETIME, @Date2 DATETIME)
RETURNS INT 
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result INT

	SET @result = (SELECT DATEDIFF(HOUR,@Date1,@Date2)/8766)

	-- Return the result of the function
	RETURN @result

END