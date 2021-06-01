# Requires 6.0.6

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <StackPanel>
        <Button Name="Button" Content="Run" />
        <Label Name="Label" />
    </StackPanel>
</Window>'
$ui = Import-Xaml $xaml

$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )

    $ui.Controls['Label'].Content = 'Hello world'
})
$ui.MainWindow.ShowDialog()
