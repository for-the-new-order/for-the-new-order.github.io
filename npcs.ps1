$npcs = (Get-Content _data/npcs.json) | ConvertFrom-Json

$npcs.PsObject.Properties | ForEach-Object {
    $name = $_.Name
    $path = "_gm-npcs/$name.md"
    $content = @"
---
title: $name
---
"@
    if (!(Test-Path $path)) {
        Set-Content -Value $content -Path $path
        Write-Host "File $name created" -ForegroundColor DarkGreen
    }
    else {
        Write-Host "File exists $name"
    }
}