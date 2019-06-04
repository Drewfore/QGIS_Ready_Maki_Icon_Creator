﻿$configFiles = Get-ChildItem -Path <REPLACE WITH THE PATH TO YOU MAKI ICONS>*.svg -rec
foreach ($file in $configFiles)
{
    (Get-Content $file.PSPath) |
    Foreach-Object { $_ -replace "/>", "fill=`"param(fill)`" fill-opacity=`"param(fill-opacity)`" stroke=`"param(outline)`" stroke-opacity=`"param(outline-opacity)`" stroke-width=`"param(outline-width)`"/>" } |
    Set-Content $file.PSPath
}