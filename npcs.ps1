[CmdletBinding()]
param (
    [switch]$uglies = $false,
    [switch]$rewrite = $false
)
$npcs = (Get-Content _data/npcs.json) | ConvertFrom-Json
$publicNpcs = (Get-Content _data/public-npcs.json) | ConvertFrom-Json
$vehicles = (Get-Content _data/vehicles.json) | ConvertFrom-Json
$ugly = (Get-Content _data/ugly.json) | ConvertFrom-Json

function Main {
    Set-GM-NPCs
    Set-Players-NPCs
    if ($uglies) {
        Set-Ugly
    }
}

# Enfore Ugly's creation
function Set-Ugly {
    Write-Host "===============" -ForegroundColor Cyan
    Write-Host "Handling Ugly's" -ForegroundColor Cyan
    Write-Host "===============" -ForegroundColor Cyan
    $ugly.PsObject.Properties | ForEach-Object {
        $name = $_.Name
        $path = "_ugly/$name.md"
        $content = @"
---
title: $name
---
"@
        Set-FileContent -name $name -path $path -content $content
    }
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

    Write-Host "====================" -ForegroundColor Cyan
    Write-Host "Handling GM VEHICLES" -ForegroundColor Cyan
    Write-Host "====================" -ForegroundColor Cyan
    $vehicles.PsObject.Properties | ForEach-Object {
        $name = $_.Name
        $path = "_gm-vehicles/$name.md"
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

    $publicNpcs.npcs | ForEach-Object {
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

    Write-Host "=====================" -ForegroundColor Cyan
    Write-Host "Handling PCs VEHICLES" -ForegroundColor Cyan
    Write-Host "=====================" -ForegroundColor Cyan
    $publicNpcs.vehicles | ForEach-Object {
        $name = $_.name
        $path = "_vehicles/$name.md"
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