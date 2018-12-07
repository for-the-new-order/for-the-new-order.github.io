$npcs = (Get-Content _data/npcs.json) | ConvertFrom-Json

function Main {
    Set-GM-NPCs
    Set-Players-NPCs
}

# Enforce GM npcs
function Set-GM-NPCs {
    Write-Host "================" -ForegroundColor Cyan
    Write-Host "Handling GM NPCs" -ForegroundColor Cyan
    Write-Host "================" -ForegroundColor Cyan
    $npcs.PsObject.Properties | ForEach-Object {
        $name = $_.Name
        $path = "_gm-npcs/$name.md"
        $content = @"
---
title: $name
---
"@
        Set-FileContent -name $name -path $path -content $content
    }
}

# Enfore PCs npcs
function Set-Players-NPCs {
    Write-Host "================" -ForegroundColor Cyan
    Write-Host "Handling PCs NPCs" -ForegroundColor Cyan
    Write-Host "=================" -ForegroundColor Cyan
    $publicNpcs = (Get-Content _data/public-npcs.json) | ConvertFrom-Json

    $publicNpcs.npcs  | ForEach-Object {
        $name = $_.name
        $path = "_npcs/$name.md"
        $frontMatter = $_.frontMatter
        if (!$frontMatter) {
            $frontMatter = @()
        }
        $content = @"
---
title: $name
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
    if (!(Test-Path $path)) {
        Set-Content -Value $content -Path $path
        Write-Host "File $name created" -ForegroundColor DarkGreen
    }
    else {
        Write-Host "File exists $name"
    }
}

Main