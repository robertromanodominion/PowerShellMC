Param(
[string]$computername='hqlt-robertro')
Get-WmiObject -class win32_computersystem `
	-ComputerName $computername |
	Format-List numberofprocessors,totalphysicalmemory
