CREATE OR ALTER PROCEDURE [dbo].[spSumMemberAges](
@total INT OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @birthDate DATETIME
	DECLARE @dateNow DATETIME
	
	DECLARE db_cursor CURSOR FOR 
	SELECT MemberBirthDate 
	FROM dbo.Member
	WHERE MemberBirthDate IS NOT NULL

	OPEN db_cursor  
	FETCH NEXT FROM db_cursor INTO @birthDate 

	SET @dateNow = GETDATE()
	SET @total = 0

	WHILE @@FETCH_STATUS = 0  
	BEGIN  
		SET @total = (@total + dbo.GetMemberAge(@birthDate, @datenow))

		FETCH NEXT FROM db_cursor INTO @birthDate 
	END 

	SELECT @total

	CLOSE db_cursor  
	DEALLOCATE db_cursor
END