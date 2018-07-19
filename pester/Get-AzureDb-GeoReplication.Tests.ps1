$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "AzureDb-GeoReplication" {
    
    It "dcn-live-basecone-db should have geo replication enabled" {
        Get-AzureDbGeoReplication "dcn-live-basecone-db" | Should -Be $true
    }

    It "dcn-live-document-db should have geo replication enabled" {
        Get-AzureDbGeoReplication "dcn-live-document-db" | Should -Be $true
    }

    It "dcn-live-folder-db should have geo replication enabled" {
        Get-AzureDbGeoReplication "dcn-live-folder-db" | Should -Be $true
    }

    It "dcn-live-identity-db should have geo replication enabled" {
        Get-AzureDbGeoReplication "dcn-live-identity-db" | Should -Be $true
    }
}
