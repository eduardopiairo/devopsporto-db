CREATE PROCEDURE testMember.[test that role member is updated]
AS
BEGIN
    DECLARE @theRole INT

------Fake Table
    EXEC tSQLt.FakeTable 'dbo.Member';

    INSERT INTO dbo.Member ( MemberId ,
                         MemberUserName ,
                         MemberFirstName ,
                         MemberLastName ,
                         MemberPassword ,
                         RoleId )
    VALUES ( 0 ,   -- MemberId - int
             N'eduardo.piairo' , -- MemberUserName - nvarchar(50)
             N'Eduardo' , -- MemberFirstName - nvarchar(50)
             N'Pairo' , -- MemberLastName - nvarchar(50)
             N'' , -- MemberPassword - nvarchar(50)
             2     -- RoleId - int
        )

------Execution
    EXEC dbo.spUpdateMemberRole @userId = 0 , @roleId = 0

    SELECT @theRole = RoleId FROM dbo.Member WHERE MemberId = 0
	

------Assertion
	EXEC tSQLt.AssertEquals @Expected = 0 , -- sql_variant
	                        @Actual = @theRole ,   -- sql_variant
	                        @Message = N'I expect a organizer role '     -- nvarchar(max)

END;
GO