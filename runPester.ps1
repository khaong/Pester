    powershell -NonInteractive -NoProfile -ExecutionPolicy unrestricted -Command { Import-Module .\Pester.psm1; Invoke-Pester . }
    if ($lastExitCode -ne 0) {
        throw "Tests failed"
    }