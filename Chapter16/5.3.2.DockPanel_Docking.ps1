# Requires 4.0.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="800" Height="500">

    <DockPanel>
        <Label Height="50" Background="Gainsboro"
         DockPanel.Dock="Top" />
        <StackPanel Background="LightBlue" Width="250"
         DockPanel.Dock="Left" />
        <ComboBox Margin="5" DockPanel.Dock="Top" />
        <StackPanel Height="30"
         Orientation="Horizontal"
         FlowDirection="RightToLeft"
         DockPanel.Dock="Bottom">

            <Button Content="Exit" Width="50" Margin="5" />
            <Button Content="Cancel" Width="50" Margin="5" />
            <Button Content="OK" Width="50" Margin="5" />
        </StackPanel>
        <Label Background="LightCoral" DockPanel.Dock="Top" />
    </DockPanel>
</Window>'
Show-Window $xaml
