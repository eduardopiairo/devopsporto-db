IF NOT EXISTS (SELECT name FROM master.sys.databases WHERE name = N'flyway-tsqlt-azure-demo')
    CREATE DATABASE [flyway-tsqlt-azure-demo]