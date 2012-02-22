task Test {
    powershell -NonInteractive -NoProfile -ExecutionPolicy unrestricted -Command "& Import-Module .\lib\Pester\Pester.psm1; & {Invoke-Pester .\Examples }"
}