CREATE OR ALTER PROCEDURE testMember.[test that a member exist]
AS
BEGIN
------Assemble
    DECLARE  @actualRowCount INT

	-- Fake Table
    EXEC tSQLt.FakeTable 'dbo.Member';

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
    
    CREATE TABLE #users(user_name NVARCHAR(50));

------Act	
	INSERT INTO #users
    EXEC dbo.spLoginUser @userName = N'eduardo.piairo';

	SELECT @actualRowCount = COUNT(*) from #users

------Assert
	EXEC tSQLt.AssertEquals 1, @actualRowCount, N'We expected one user';

END;
GO
