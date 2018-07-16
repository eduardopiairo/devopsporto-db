-- run all tests
exec tSQLt.RunAll;

-- run a specific test case
exec tSQLt.Run '[AcceleratorTests].[test a particle is included only if it fits inside the boundaries of the rectangle]'


-- run tests for a specific test class/group
exec  tSQLt.Run '[AcceleratorTests]'



-- Uninstall tSQLt
--EXEC tSQLt.Uninstall