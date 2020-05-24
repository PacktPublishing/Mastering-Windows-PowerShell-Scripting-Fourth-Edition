Add-Type -AssemblyName PresentationFramework
Add-Type -Path .\Microsoft.Toolkit.Wpf.UI.Controls.WebView\lib\netcoreapp3.0\Microsoft.Toolkit.Wpf.UI.Controls.WebView.dll

$clientId = Read-Host 'Enter the client-id'
$authorize = 'https://github.com/login/oauth/authorize?client_id={0}&scope={1}' -f @(
    $clientId
    'user:email'
)

$window = [System.Windows.Window]@{
    Height = 650
    Width  = 450
}
$browser = [Microsoft.Toolkit.Wpf.UI.Controls.WebView]@{
    Height = 650
    Width  = 450
}
$window.Content = $browser

# Add an event handler to close the window when
# interaction with GitHub is complete.
$browser.add_NavigationCompleted( {
    param ( $sender, $eventargs )

    if ($eventArgs.Uri -match 'localhost:40000') {
        $Global:authorizationCode = $eventArgs.Uri -replace '^.+code='

        $sender.Parent.Close()
    } else {
        $Global:authorizationCode = $null
    }
} )

$window.add_Loaded( {
    $browser.Navigate($authorize)
} )

$null = $window.ShowDialog()
