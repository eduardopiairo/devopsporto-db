IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'DevOpsPorto-Db-Test')
    CREATE DATABASE [DevOpsPorto-Db-Test]