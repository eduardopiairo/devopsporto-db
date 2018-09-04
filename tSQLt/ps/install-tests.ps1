param(
        [Parameter(Mandatory=$true)][string]$serverName,
        [Parameter(Mandatory=$true)][string]$databaseName,
        [Parameter(Mandatory=$true)][string]$user,
        [Parameter(Mandatory=$true)][string]$pass

    )

# Create testMember test class 
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\create_testMember_class.sql"


Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_exist.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_is_empty.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_role_update.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_table_exist.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_calculate_age_fake.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_calculate_age.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_calculate_sum_ages.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -Username $user -Password $pass -InputFile ".\tSQLt\tests\testMember\test_member_calculate_average_ages.sql"