function Set-HeatmapLevel
{
    <#
    .Synopsis
        Sets the color levels used on the heatmap
    .Description
        Sets the color levels used on the heatmap.  
        
        The key in the table is the color, and the value is the point at which to start using the color.        
    .Example
        Set-HeatmapLevel @{
            Green = 0
            DarkGreen = 25     
            Yellow = 50
            Red = 75
        }
    .Link
        Get-HeatmapLevel
    #>
    param(
    # The heatmap table
    [ValidateScript({
        #region Parameter Validation
        $mismatch = $_.Keys  |
            Where-Object {
                -not ($_ -as ([ConsoleColor]))
            }
        if ($misMatch) {
            throw "$misMatch : Key names must be colors"
        }
        return $true
        #endregion Parameter Validation
    })]
    [Hashtable]
    $Heatmap
    )
    
    process {
        $script:HeatMapLevel = $Heatmap
    }
} 
