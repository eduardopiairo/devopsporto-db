﻿$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "AzureDb-GeoReplication" {
    It "DevOpsPOrto-Db should have geo replication enabled" {
        Get-AzureDbGeoReplication "DevOpsPOrto-Db" | Should -Be $false
    }
}
