$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-AzureDb-TransparentDataEncryption" {
    Context "devopsporto-db-sqlserver"{
        It "TransparentDataEncryption for DevOpsPorto-Db (devopsporto-db-sqlserver) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "sqlsatcamb" "devopsporto-db-sqlserver" "DevOpsPorto-Db" | Should -Be $true
        }
    }
}

