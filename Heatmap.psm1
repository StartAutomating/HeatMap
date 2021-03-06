$script:HeatMapCounters = @{}
$script:HeatMapLevel = @{
    Green = 0
    DarkGreen = 25     
    Yellow = 50
    Red = 75
}

. $psScriptRoot\Add-HeatmapCounter.ps1
. $psScriptRoot\Get-HeatmapCounter.ps1
. $psScriptRoot\Remove-HeatmapCounter.ps1

. $psScriptRoot\Get-PercentagePerformanceCounter.ps1
. $psScriptRoot\Get-PerformanceCounterName.ps1


. $psScriptRoot\Get-HeatmapLevel.ps1
. $psScriptRoot\Set-HeatmapLevel.ps1

. $psscriptroot\watch-heatmap.ps1


