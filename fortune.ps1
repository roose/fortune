param($cmd)

function Show-Version {
  Write-Output "version 1.0.0"
}

function Show-Help {
  Write-Output "Usage: fortune [file]"
}

function Show-Fortune($fortuneFile) {
  (Get-Content -Path $fortuneFile -raw) -replace "`r`n", "`n" -split "`n%`n" | Get-Random
}

if ('--version' -contains $cmd -or (!$cmd -and '-v' -contains $args)) {
  Show-Version
} elseif (@('--help', '/?') -contains $cmd -or $args[0] -contains '-h') {
  Show-Help
} elseif ($cmd.length -ne 0) {
  if ( Test-Path($cmd) ) {
    Show-Fortune($cmd)
  } else {
    "File doesn't exist"
  }
} else {
  Show-Fortune(Join-Path $PSScriptRoot "fortune.txt")
}
