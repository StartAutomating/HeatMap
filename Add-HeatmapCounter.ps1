function Add-HeatmapCounter
{
    <#
    .Synopsis
        Adds a Performance counter to the heatmap
    .Description
        Adds a Performance counter to the heatmap.
    .Example
        Add-HeatmapCounter '\Processor(*)\% Processor Time'
        Watch-Heatmap
    .Link
        Get-HeatmapCounter        
    .Link
        Remove-HeatmapCounter
    .Link
        Watch-Heatmap            
    #>
    param(
    # The name (short or full path) to the performance counter to add to the heatmap.
    # To see available performance counters, use Get-PercentagePerformanceCounter
    [Parameter(Mandatory=$true)]
    [string]
    $Name
    )
    
    
    process {
        #region check that it exists
        Write-Progress "Getting Counter value" "$Name"
        $counterSample = Get-Counter -Counter $name -ErrorAction Stop
        if (-not $counterSample) { return } 
        #endregion check that it exists
        
        #region add it
        $script:HeatMapCounters[$Name] = $name
        #endregion add it
    }
    
} 

 
