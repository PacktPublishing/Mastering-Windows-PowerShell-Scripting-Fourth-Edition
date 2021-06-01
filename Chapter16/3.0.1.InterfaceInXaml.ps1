# Requires 1.0.1

$xaml = [xml]'<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <Label Content="Hello world" />
</Window>'
$window = [System.Windows.Markup.XamlReader]::Load(
    [System.Xml.XmlNodeReader]$xaml
)
