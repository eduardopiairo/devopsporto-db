-- Create new test class

IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'testMember')
    tSQLt.NewTestClass 'testMember'