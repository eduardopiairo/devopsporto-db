CREATE PROCEDURE testMember.[test that table Member is empty]
AS
BEGIN
    IF OBJECT_ID('actual') IS NOT NULL DROP TABLE actual;

------Fake Table
    EXEC tSQLt.FakeTable 'dbo.Member';
	
	INSERT INTO dbo.Member ( MemberId ,
                         MemberUserName ,
                         MemberFirstName ,
                         MemberLastName ,
                         MemberRoleId )
    VALUES ( 0 ,   -- MemberId - int
             N'eduardo.piair' , -- MemberUserName - nvarchar(50)
             N'Eduardo' , -- MemberFirstName - nvarchar(50)
             N'Pairo' , -- MemberLastName - nvarchar(50)
             0     -- MemberRoleId - int
        )

------Execution
    SELECT MemberId, MemberUserName
      INTO actual
      FROM dbo.Member;

------Assertion
    EXEC tSQLt.AssertEmptyTable 'actual';
END;