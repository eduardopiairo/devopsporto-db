-- Uninstall tSQLt
--EXEC tSQLt.Uninstall

-- Drop tests
-- DROP PROCEDURE [testMember].[test that a member exist]
-- DROP PROCEDURE [testMember].[test that table Member is empty]
-- DROP PROCEDURE [testMember].[test if table Member exist]


-- Create new test class
tSQLt.NewTestClass 'testMember'

-- Run individual test
exec tSQLt.Run '[testMember].[test that a member exist]' 
exec tSQLt.Run '[testMember].[test that table Member is empty]'
exec tSQLt.Run '[testMember].[test if table Member exist]' 
exec tSQLt.Run '[testMember].[test that role member is updated]'

-- Run a test class
exec tSQLt.Run '[testMember]' 

-- Run all tests
exec tSQLt.RunAll 

