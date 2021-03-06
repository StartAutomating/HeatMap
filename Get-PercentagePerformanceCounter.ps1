function Get-PercentagePerformanceCounter
{
    <#
    .Synopsis
        Gets performance counters that are percentages
    .Description
        Gets all performance counters on the system that are percentaged based values.  
        These counters will work well on a performance counter heatmap
        When run in Azure, this will list all percentage based performance counters available to an Azure instance. 
    .Example
        Get-PercentagePerformanceCounter
    .Link
        Get-Counter
    #>
    param()
       
    #region Get % Counters
    Get-Counter -ListSet * | 
        Select-Object -ExpandProperty Paths | 
        Where-Object {$_ -like "*%*" } 
    #endregion Get % Counters
} 
