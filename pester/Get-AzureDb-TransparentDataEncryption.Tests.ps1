$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-AzureDb-TransparentDataEncryption" {
    Context "dcn-live-sqlserver"{
        It "TransparentDataEncryption for dcn-live-basecone-db (dcn-live-sqlserver) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver" "dcn-live-basecone-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-document-db (dcn-live-sqlserver) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver" "dcn-live-document-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-folder-db (dcn-live-sqlserver) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver" "dcn-live-folder-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-identity-db (dcn-live-sqlserver) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver" "dcn-live-identity-db" | Should -Be $true
        }
    }
    
    Context "dcn-live-sqlserver-north"{
        It "TransparentDataEncryption for dcn-live-basecone-db (dcn-live-sqlserver-north) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver-north" "dcn-live-basecone-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-document-db (dcn-live-sqlserver-north) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver-north" "dcn-live-document-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-folder-db (dcn-live-sqlserver-north) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver-north" "dcn-live-folder-db" | Should -Be $true
        }
        It "TransparentDataEncryption for dcn-live-identity-db (dcn-live-sqlserver-north) should Enabled " {
            Get-AzureRmSqlDatabaseTransparentDataEncryption "dcn-live" "dcn-live-sqlserver-north" "dcn-live-identity-db" | Should -Be $true
        }
    }
    
}

