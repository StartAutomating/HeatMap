function Remove-HeatmapCounter
{
    <#
    .Synopsis
        Removes a performance counter from the heatmap
    .Description
        Removes a performance counter to the heatmap.
    .Example
        Remove-HeatmapCounter '\Processor(_total)\% Processor Time'
    .Link
        Get-HeatmapCounter        
    .Link
        Add-HeatmapCounter
    .Link
        Watch-Heatmap            
    #>
    [CmdletBinding(SupportsShouldProcess=$true,ConfirmImpact='High')]
    param(
    # The name of the performance counter to remove from the heatmap
    [Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
    [string]
    $Name
    )
    
    
    process {
        #region Make sure it exists
        if (-not $script:HeatMapCounters[$Name]) {
            Write-Error "$Name not found"
            return
        }
        #endregion
        
        #region Remove It        
        if ($psCmdlet.ShouldProcess($Name)) {
            $null = $script:HeatMapCounters.Remove($Name)
        }
        #endregion Remove It
    }
    
} 

