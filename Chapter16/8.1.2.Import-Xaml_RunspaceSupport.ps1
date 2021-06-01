function Import-Xaml {
    param (
        [Xml]$Xaml
    )

    Add-Type -AssemblyName PresentationFramework

    $window = [System.Windows.Markup.XamlReader]::Load(
        [System.Xml.XmlNodeReader]$Xaml
    )
    $controls = [Hashtable]::Synchronized(@{
        Dispatcher = $window.Dispatcher
    })
    foreach ($control in $Xaml.SelectNodes('//*[@Name]')) {
        $controls[$control.Name] = $window.FindName($control.Name)
    }

    $initialSessionState = [InitialSessionState]::CreateDefault2()
    $initialSessionState.Variables.Add(
        [System.Management.Automation.Runspaces.SessionStateVariableEntry]::new(
            'ui',
            [PSCustomObject]@{ Controls = $controls },
            'UI controls'
        )
    )

    [PSCustomObject]@{
        MainWindow = $Window
        Controls   = $controls
        PSHost     = [PowerShell]::Create($initialSessionState)
    }
}
