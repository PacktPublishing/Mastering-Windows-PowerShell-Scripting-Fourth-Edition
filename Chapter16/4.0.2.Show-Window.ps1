function Show-Window {
    param (
        [Xml]$Xaml
    )

    Add-Type -AssemblyName PresentationFramework

    $Window = [System.Windows.Markup.XamlReader]::Load(
        [System.Xml.XmlNodeReader]$Xaml
    )
    $Window.ShowDialog()
}
