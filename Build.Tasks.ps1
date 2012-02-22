task Test {
    powershell -NonInteractive -NoProfile -ExecutionPolicy unrestricted -Command "& Import-Module .\Pester.psm1; & {Invoke-Pester .\Examples }"
}