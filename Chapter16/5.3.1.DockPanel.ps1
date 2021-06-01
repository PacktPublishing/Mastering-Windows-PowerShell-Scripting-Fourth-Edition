# Requires 4.0.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <DockPanel>
        <StackPanel Width="50" DockPanel.Dock="Left">
            <Button Content="Button1" />
            <Button Content="Button2" />
            <Button Content="Button3" />
        </StackPanel>
        <Label />
    </DockPanel>
</Window>'
Show-Window $xaml
