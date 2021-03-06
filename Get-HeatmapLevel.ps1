function Get-HeatmapLevel
{
    <#
    .Synopsis
        Gets the different levels of heatmap colors
    .Description
        Gets the mapping of rendered color to heatmap percentage values
    .Example
        Get-HeatmapLevel
    .Link
        Set-HeatmapLevel
    #>
    param()
    
    #region Get heatmap level hashtable
    $script:HeatMapLevel
    #endregion Get heatmap level hashtable
} 
