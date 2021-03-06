#!/usr/bin/env pwsh
#Requires -Version 6
#Requires -Modules PSScriptAnalyzer

Set-StrictMode -Version 2.0
$ErrorActionPreference = "Stop"

$Results = @()

ForEach ($Path in $Args) {
    $Results += Invoke-ScriptAnalyzer -Path $Path
}

ConvertTo-Json -InputObject $Results
