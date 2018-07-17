CREATE PROCEDURE testMember.[test if table Member exist]
AS
BEGIN

    EXEC tSQLt.AssertObjectExists 'Member';
END;