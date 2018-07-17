-- Create new test class

IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'testMember')
    exec tSQLt.NewTestClass 'testMember'