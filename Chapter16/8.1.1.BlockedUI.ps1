# Requires 6.0.6

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <Button Name="Button" Content="Start" />
</Window>'
$ui = Import-Xaml $xaml

$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )

    Start-Sleep -Seconds 60
})
$ui.MainWindow.ShowDialog()
