CREATE PROCEDURE testMember.[test that a member exist]
AS
BEGIN
------Fake Table
    EXEC tSQLt.FakeTable 'dbo.Member';

------Execution
	CREATE TABLE #users(user_name NVARCHAR(50));
    INSERT INTO #users
    EXEC dbo.spLoginUser @userName = N'eduardo.piairo';
	
	DECLARE @actualRowCount int = (select count(*) from #users)

------Assertion
	EXEC tSQLt.AssertNotEquals @Expected = 1 , -- sql_variant
	                           @Actual = @actualRowCount ,   -- sql_variant
	                           @Message = N'We expect zero users'     -- nvarchar(max)

------Fake Table	
    INSERT INTO dbo.Member ( MemberId ,
                         MemberUserName ,
                         MemberFirstName ,
                         MemberLastName ,
                         MemberRoleId )
    VALUES ( 0 ,   -- MemberId - int
             N'eduardo.piairo' , -- MemberUserName - nvarchar(50)
             N'Eduardo' , -- MemberFirstName - nvarchar(50)
             N'Pairo' , -- MemberLastName - nvarchar(50)
             0     -- MemberRoleId - int
        )

	INSERT INTO #users
    EXEC dbo.spLoginUser @userName = N'eduardo.piairo';

------Execution
	SELECT @actualRowCount = COUNT(*) from #users

------Assertion
	EXEC tSQLt.AssertEquals 1, @actualRowCount, N'We expected one user';

END;
GO