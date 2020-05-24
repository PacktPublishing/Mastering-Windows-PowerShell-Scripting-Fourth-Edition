$params = @{
    Uri     = 'https://www.nuget.org/api/v2/package/Microsoft.Toolkit.Wpf.UI.Controls.WebView/6.0.1'
    OutFile = 'Microsoft.Toolkit.Wpf.UI.Controls.WebView.zip'
}
Invoke-WebRequest @params
Expand-Archive Microsoft.Toolkit.Wpf.UI.Controls.WebView.zip
