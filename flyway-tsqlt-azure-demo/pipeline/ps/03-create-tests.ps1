param(
	[Parameter(Mandatory=$true)][string]$serverName,
	[Parameter(Mandatory=$true)][string]$databaseName,
	[string]$user,
	[string]$pass
)

# Create testMember test class 
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\create_testMember_class.sql"


#Create tests

# Linked to issue "Create entities"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_table_exist.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_is_empty.sql"

# Linked to issue "Update Member Role"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_role_update.sql"

# Linked to issue "Member Login"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_exist.sql"

# Linked to issue "Member Average Age"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_calculate_age.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_calculate_age_fake.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_calculate_sum_ages.sql"
Invoke-Sqlcmd -ServerInstance $serverName -Database $databaseName -InputFile ".\tests\testMember\test_member_calculate_average_ages.sql"