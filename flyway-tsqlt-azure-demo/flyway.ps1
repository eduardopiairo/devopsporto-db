param(
	[Parameter(Mandatory=$true)][string] $databaseName = "Null",
	[Parameter(Mandatory=$true)][string] $environmentName = "Null"
)

# Not the most elegant thing, but since all of the databases in this demo exist in the exact same SQL Server instance
# (i.e. on a bare-metal server with no containers), we have to make a distinction between Dev, UAT and Prod DBs: "flyway-tsqlt-demo-Dev", "flyway-tsqlt-demo-UAT", and "flyway-tsqlt-demo-Prod" are examples of the actual names of the DBs.
flyway migrate -configFiles="flyway.conf" -url="jdbc:sqlserver://localhost;database=$databaseName-$environmentName;integratedSecurity=true"