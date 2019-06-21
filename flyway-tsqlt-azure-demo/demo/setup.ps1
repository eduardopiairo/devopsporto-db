$serverName = "localhost"

# Unfortunately, database name needs to be harcoded and consistent across all
# scripts
$databaseName = "flyway-tSQLt-azure-demo"
$dev = "Dev"
$uat = "UAT"
$prod = "Prod"

# (Re)Create and baseline the Dev DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile "Create_Dev_DB.sql"
flyway baseline -configFiles="../pipeline/util/flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$dev;integratedSecurity=true"

# (Re)Create and baseline the UAT DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile ".\Create_UAT_DB.sql"
flyway baseline -configFiles="../pipeline/util/flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$uat;integratedSecurity=true"

# (Re)Create and baseline the Prod DB
Invoke-Sqlcmd -ServerInstance $serverName -InputFile ".\Create_Prod_DB.sql"
flyway baseline -configFiles="../pipeline/util/flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$prod;integratedSecurity=true"