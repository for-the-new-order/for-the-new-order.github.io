[CmdletBinding()]
param (
    [switch]$rewrite = $false
)
$adventures = (Get-Content _data/adventures.json) | ConvertFrom-Json

function Main {
    Set-Players-Adventures '_adventures'
    Set-Players-Adventures '_gm-adventures'
}

function Set-Players-Adventures($baseDirectory) {
    Write-Host "=======================" -ForegroundColor Cyan
    Write-Host "Handling $baseDirectory adventures" -ForegroundColor Cyan
    Write-Host "=======================" -ForegroundColor Cyan
    $adventures.PsObject.Properties | ForEach-Object {
        $name = $_.Name
        $title = $_.Value.name
        $path = "$baseDirectory/$name.md"
        $frontMatter = $_.Value.frontMatter
        if (!$frontMatter) {
            $frontMatter = @()
        }
        $content = @"
---
title: '$title'
key: $name
$([String]::Join("`n", $frontMatter))
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