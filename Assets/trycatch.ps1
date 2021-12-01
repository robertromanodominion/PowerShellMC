try {
    Get-Content -Path r:\doesnotexist\notthere.txt -ErrorAction Stop
}
catch{
    $ErrorMessage = $_.Exception.Message 
    Write-Output "Something went wrong - $ErrorMessage"
    Write-Host -foregroundcolor Blue -BackgroundColor White $_.Exception
    $PSItem.InvocationInfo | Format-List *
}

try {
    asdesadf asdf asdf 
}
catch [System.Management.Automation.CommandNotFoundException] {
    write-output "no idea what that was"
}
catch {
    $_.Exception
}



try {
    $CurrentErrorActionPrefernce = $ErrorActionPreference
    $ErrorActionPreference = "Stop"
    Get-Content -Path r:\doesnotexist\notthere.txt
}
catch {
    Write-Output "Something went wrong"
    Write-Host -ForegroundColor Blue -BackgroundColor White $_.Exception.Message
}
Finally {
    $ErrorActionPreference = $CurrentErrorActionPrefernce
}