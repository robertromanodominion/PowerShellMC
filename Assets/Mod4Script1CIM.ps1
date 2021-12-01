Param(
[Parameter(Mandatory=$true)][string]$computername)
Get-CimInstance -ClassName win32_computersystem `
	-ComputerName $computername |
	Format-List numberofprocessors,totalphysicalmemory
