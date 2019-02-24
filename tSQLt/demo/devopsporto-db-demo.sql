-- Drop databases
-- DROP DATABASE [DevOpsPorto-Db]
-- DROP DATABASE [DevOpsPorto-Db-Test]

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
-- Check if the table Member exist in database (TB Member)
EXEC tSQLt.Run '[testMember].[test that table Member exist]' 
-- Check if a specific member exist in table Member (SP spLoginUser)
EXEC tSQLt.Run '[testMember].[test that a member exist]'
-- Chekc if the table Member have no records (TB Member)
EXEC tSQLt.Run '[testMember].[test that table Member is empty]'
-- Check if the role of a member is updated (SP spUpdateMemberRole)
EXEC tSQLt.Run '[testMember].[test that role member is updated]'

-- Calculte the difference between 2 ages (FN GetMemberAges)
EXEC tSQLt.Run'[testMember].[test calculate member age]'

-- Calucalte the sum of the ages of the members (SP spSumMemberAges)(Uses a fake function Fake_GetMemberAge)

-- This insert will make the test fail
--INSERT INTO [dbo].[Member] ([MemberUserName],[MemberFirstName],[MemberLastName], [MemberRoleId], [MemberBirthDate]) VALUES ('af.pi','afonso','piairo', 3, '2013-06-24 00:00:00.000' )
EXEC tSQLt.Run'[testMember].[test calculate the sum of all members ages]'

-- Calculate the average ages of the members (SP spAverageMembersAges)
EXEC tSQLt.Run'[testMember].[test calculate average members age]'









