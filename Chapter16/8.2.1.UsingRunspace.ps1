# Requires 8.1.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <StackPanel>
        <TextBox Name="TextBox" Text="Hello world" />
        <Button Name="Button" Content="Start" />
    </StackPanel>
</Window>'
$ui = Import-Xaml $xaml

$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()
    $ui.PSHost.AddScript({
        $value = $ui.Controls['Dispatcher'].Invoke(
            [Func[object]]{ $ui.Controls['TextBox'].Text }
        )
        Write-Host $value
    }).BeginInvoke()
})
$ui.MainWindow.ShowDialog()
