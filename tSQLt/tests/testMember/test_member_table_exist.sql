CREATE PROCEDURE testMember.[test that table Member exist]
AS
BEGIN

--TEST PURPOSE: test if the table Member exist on the database

------Assert
    EXEC tSQLt.AssertObjectExists 'Member';
END;