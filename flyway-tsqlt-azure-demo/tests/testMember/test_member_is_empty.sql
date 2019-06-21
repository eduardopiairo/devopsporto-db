CREATE OR ALTER PROCEDURE testMember.[test that table Member is empty]
AS
BEGIN
------Assemble
    IF OBJECT_ID('actual') IS NOT NULL DROP TABLE actual;

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
             0     -- MemberRoleId - int
        )

------Act
    DELETE FROM Member
    
    SELECT MemberId, MemberUserName
      INTO actual
      FROM dbo.Member;

------Assert
    EXEC tSQLt.AssertEmptyTable 'actual';
END;