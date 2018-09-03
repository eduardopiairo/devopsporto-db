-- drop database
IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'DevOpsPorto-Db-Test')
BEGIN
    ALTER DATABASE [DevOpsPorto-Db-Test] SET single_user WITH ROLLBACK IMMEDIATE
    DROP DATABASE [DevOpsPorto-Db-Test]
END