param(
    $task = @("Test"),
    $verbose = "/noconsolelogger"  #q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic]. e.g.: /v:n
)

$rootDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Import-Module $rootDir\PSake-4.00\psake.psm1 -force

Invoke-Psake .\Build.Tasks.ps1 -taskList $task `
    -parameters @{
        "rootDir" = $rootDir;
        "verbose" = $verbose;
      }