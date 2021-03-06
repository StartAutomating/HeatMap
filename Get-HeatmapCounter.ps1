function Get-HeatmapCounter
{
    <#
    .Synopsis
        Gets the performance counters registered in the heatmap
    .Description
        Gets the performance counters registered in the heatmap.  
        
        To add performance counters to the heatmap, use Add-PerformanceCounter.  
        
        To remove performance counters from the heatmap, use Remove-PerformanceCounter        
    .Example
        Get-HeatmapCounter
    .Link
        Add-HeatmapCounter
    .Link
        Remove-HeatmapCounter
    #>    
    [CmdletBinding(DefaultParameterSetName='All')]
    param(
    # The name of a particular counter to get from the heatmap.  By default, will get all counters.
    [Parameter(Mandatory=$true,
        ParameterSetName='ByName',
        ValueFromPipeline=$true,
        ValueFromPipelineByPropertyName=$true)]
    [string]$Name,
    # If set, gets the values from the heatmap, not the name
    [switch]$GetValue
    )
    
    
    process {        
        if ($psCmdlet.ParameterSetName -eq 'All') {
            #region Get All Counters
            if ($getValue) {
                $script:HeatMapCounters.Keys | Get-Counter
            } else {
                $script:HeatMapCounters.Keys 
            }
            #endregion Get All Counters
            
        } elseif ($psCmdlet.ParameterSetName -eq 'ByName' ){
            #region Get Counters by Name
            if ($getValue) {
                $script:HeatMapCounters.Keys | Where-Object { $_ -like $Name } | Get-Counter
            } else {
                $script:HeatMapCounters.Keys | Where-Object { $_ -like $Name } 
            }
            #endregion Get Counters by Name            
        }
    }
    
} 
 
