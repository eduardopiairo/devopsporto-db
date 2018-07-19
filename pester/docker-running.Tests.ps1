Context "Docker" {
    It "Docker for Windows should be running" {
        (Get-Process 'Docker for Windows' -ErrorAction SilentlyContinue).Count | Should Be 1
    }
    It "The docker deamon should be running" {
        (Get-Process dockerd -ErrorAction SilentlyContinue).Count | Should Be 1
    }
    It "No containers should be running" {
        (docker ps).Count | Should Be 1
    }
}