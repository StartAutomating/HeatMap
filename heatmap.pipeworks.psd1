@{   
    JQueryUITheme ='Blitzer'
    AnalyticsId = 'UA-24591838-7'
    WebCommand  = @{
        "Get-PerformanceCounterName" = @{
            SessionThrottle = "0:1:0"
            RunWithoutInput = $true
        }
        "Get-PercentagePerformanceCounter" = @{
            SessionThrottle = "0:1:0"
            RunWithoutInput = $true
        }
    }
    AllowDownload = $true
    DomainSchematics = @{
        "heatmap.start-automating.com | heatmap.startautomating.com" = "Default"
    }    


    Technet = @{
        Category="Operating System"
        Subcategory="Monitoring"
        OperatingSystem="Windows 7", "Windows Server 2008", "Windows Server 2008 R2", "Windows Vista", "Windows XP", "Windows Server 2012", "Windows 8"
        Tag='Start-Automating', 'PowerShell Tools', 'Performance Counter', 'EZOut'
        MSLPL=$true
        Summary="
Heatmap is a tool to help you explore and visualize your performance counters.  It lets you provide a colorized heatmap for percentage based perfcounters.  It was built as an example of the power of the PowerShell formatting engine, harnessed by EZOut.
"
        Url = 'http://gallery.technet.microsoft.com/Heatmap-3ae5915f'

    }  

    GitHub = @{
        Owner = "StartAutomating"
        Project = "HeatMap"
        Url = "https://github.com/StartAutomating/Heatmap"
    }
}
 
