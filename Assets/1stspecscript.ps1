    $win32CSOut = Get-CimInstance -ClassName win32_computersystem
    $win32OSOut = Get-CimInstance -ClassName win32_operatingsystem

    $paramout = @{
    'Memory'=$win32CSOut.totalphysicalmemory;
    'Free Memory'=$win32OSOut.freephysicalmemory;
    'Procs'=$win32CSOut.numberofprocessors;
    'Version'=$win32OSOut.version}

    $outobj = New-Object -TypeName PSObject -Property $paramout
    Write-Output $outobj