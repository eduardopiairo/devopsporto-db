$serverName = "localhost"
$databaseName = "flyway-tSQLt-azure-demo"
$dev = "Dev"
$uat = "UAT"
$prod = "Prod"

# Create and baseline the Dev DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile ".\Create_Dev_DB.sql"
flyway baseline -configFiles="../flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$dev;integratedSecurity=true"

# Create and baseline the UAT DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile ".\Create_UAT_DB.sql"
flyway baseline -configFiles="../flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$uat;integratedSecurity=true"

# Create and baseline the Prod DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile ".\Create_Prod_DB.sql"
flyway baseline -configFiles="../flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$prod;integratedSecurity=true"