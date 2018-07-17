IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'DevOpsPorto-Test')
    CREATE DATABASE [DevOpsPorto-Test]