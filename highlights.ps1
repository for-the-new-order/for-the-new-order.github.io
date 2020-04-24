[CmdletBinding()]
param (
    [switch]$rewrite = $false
)
$highlights = (Get-Content _data/highlights.json) | ConvertFrom-Json

function Main {
    Add-Type -AssemblyName System.IO
    $highlights.PsObject.Properties | ForEach-Object {
        $title = $_.Name
        Set-Highlights $_ '_highlights' $_.Name
    }
}

function Set-Highlights($current, $baseDirectory, $type) {
    Write-Host "=======================" -ForegroundColor Cyan
    Write-Host "Handling $baseDirectory/$type" -ForegroundColor Cyan
    Write-Host "=======================" -ForegroundColor Cyan

    $current.Value | ForEach-Object {
        $title = $_.Name
        $path = "$baseDirectory/$type/$title.md"
        $content = @"
---
title: $title
type: $type
---
"@
        Set-FileContent -name $title -path $path -content $content
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
        $fi = ([System.IO.FileInfo]$path)
        if (-not $fi.Directory.Exists) {
            $fi.Directory.Create();
            Write-Host "Directory created '$($fi.Directory)'"
        }
    
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