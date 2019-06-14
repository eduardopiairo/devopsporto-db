IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'flyway-tSQLt-azure-demo-UAT')
    CREATE DATABASE [flyway-tSQLt-azure-demo-UAT]