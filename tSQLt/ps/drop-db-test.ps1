
#param(
#        [Parameter(Mandatory=$true)][string]$serverName,
#        [Parameter(Mandatory=$true)][string]$user,
#        [Parameter(Mandatory=$true)][string]$pass
#
#    )

#Invoke-Sqlcmd -ServerInstance $serverName -Database "master" -Username $user -Password $pass -InputFile ".\tSQLt\sql\drop-test-db.sql"

#Write-Host $serverName


sqlcmd -S "(local)\SQL2017" -d "master" -U "sa" -P "Password12!" -i ".\tSQLt\sql\drop-test-db.sql"