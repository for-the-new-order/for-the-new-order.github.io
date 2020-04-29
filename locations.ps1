[CmdletBinding()]
param (
    [switch]$rewrite = $false
)
$adventures = (Get-Content _data/locations.json) | ConvertFrom-Json

function Main {
    Set-Players-Adventures '_locations'
}

function Set-Players-Adventures($baseDirectory) {
    Write-Host "=======================" -ForegroundColor Cyan
    Write-Host "Handling $baseDirectory locations" -ForegroundColor Cyan
    Write-Host "=======================" -ForegroundColor Cyan
    $adventures.PsObject.Properties | ForEach-Object {
        $title = $_.Name
        $path = "$baseDirectory/$title.md"
        $content = @"
---
title: '$title'
---
"@
        Set-FileContent -name $name -path $path -content $content
    }
}

function Set-FileContent {
    param (
        [string]$name,
        [string]$path,
        [string]$content
    )
    $fileExists = Test-Path $path;
    if (!$fileExists -or $rewrite) {
        Set-Content -Value $content -Path $path
        if ($fileExists) {
            Write-Host "File $path updated" -ForegroundColor DarkMagenta
        }
        else {
            Write-Host "File $path created" -ForegroundColor DarkGreen
        }
    }
    else {
        Write-Verbose "File exists $path"
    }
}

Main