[CmdletBinding()]
param (
    [switch]$rewrite = $false
)
$adventures = (Get-Content _data/adventures.json) | ConvertFrom-Json

function Main {
    Set-Players-Adventures
}

function Set-Players-Adventures {
    Write-Host "=======================" -ForegroundColor Cyan
    Write-Host "Handling PCs adventures" -ForegroundColor Cyan
    Write-Host "=======================" -ForegroundColor Cyan

    Write-Host "================" -ForegroundColor Cyan
    Write-Host "Handling GM NPCs" -ForegroundColor Cyan
    Write-Host "================" -ForegroundColor Cyan
    $adventures.PsObject.Properties | ForEach-Object {
        $name = $_.Name
        $title = $_.Value.name
        $path = "_adventures/$name.md"
        $content = @"
---
title: '$title'
key: $name
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
            Write-Host "File $name updated" -ForegroundColor DarkMagenta
        }
        else {
            Write-Host "File $name created" -ForegroundColor DarkGreen
        }
    }
    else {
        Write-Verbose "File exists $name"
    }
}

Main