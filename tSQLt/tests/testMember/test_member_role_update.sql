CREATE PROCEDURE testMember.[test that role member is updated]
AS
BEGIN
------Assemble
    DECLARE @theRole INT

    --Fake Table
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
             2     -- MemberRoleId - int
        )

------Act
    EXEC dbo.spUpdateMemberRole @userId = 0 , @roleId = 0

    SELECT @theRole = MemberRoleId FROM dbo.Member WHERE MemberId = 0
	

------Assert
	EXEC tSQLt.AssertEquals @Expected = 0 , -- sql_variant
	                        @Actual = @theRole ,   -- sql_variant
	                        @Message = N'I expect a organizer role '     -- nvarchar(max)

END;
GO