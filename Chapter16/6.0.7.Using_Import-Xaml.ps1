# Requires 6.0.6

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <StackPanel Width="50">
        <Button Name="Button1" Content="Button1" />
        <Button Name="Button2" Content="Button2" />
        <Button Name="Button3" Content="Button3" />
    </StackPanel>
</Window>'
$ui = Import-Xaml $Xaml
