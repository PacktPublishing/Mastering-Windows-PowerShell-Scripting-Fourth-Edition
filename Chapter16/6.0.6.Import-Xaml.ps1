function Import-Xaml {
    param (
        [Xml]$Xaml
    )

    Add-Type -AssemblyName PresentationFramework

    $window = [System.Windows.Markup.XamlReader]::Load(
        [System.Xml.XmlNodeReader]$Xaml
    )
    $controls = @{}
    foreach ($control in $Xaml.SelectNodes('//*[@Name]')) {
        $controls[$control.Name] = $window.FindName($control.Name)
    }

    [PSCustomObject]@{
        MainWindow = $Window
        Controls   = $controls
    }
}
