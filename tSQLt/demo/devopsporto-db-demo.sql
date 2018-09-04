-- Uninstall tSQLt
--EXEC tSQLt.Uninstall

-- Drop tests
-- DROP PROCEDURE [testMember].[test that a member exist]
-- DROP PROCEDURE [testMember].[test that table Member is empty]
-- DROP PROCEDURE [testMember].[test if table Member exist]


-- Create new test class
tSQLt.NewTestClass 'testMember'

-- Run all tests
EXEC tSQLt.RunAll

-- Run a test class
EXEC tSQLt.Run '[testMember]' 

-- Run individual test
EXEC tSQLt.Run '[testMember].[test that table Member exist]' 
EXEC tSQLt.Run '[testMember].[test that a member exist]'
EXEC tSQLt.Run '[testMember].[test that table Member is empty]'
EXEC tSQLt.Run '[testMember].[test that role member is updated]'


EXEC tSQLt.Run'[testMember].[test calculate member age]'
--INSERT INTO [dbo].[Member] ([MemberUserName],[MemberFirstName],[MemberLastName], [MemberRoleId], [MemberBirthDate]) VALUES ('af.pi','afonso','piairo', 3, '2013-06-24 00:00:00.000' )
EXEC tSQLt.Run'[testMember].[test calculate the sum of all members ages]'
EXEC tSQLt.Run'[testMember].[test calculate average members age]'









