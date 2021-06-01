# Requires 6.0.6

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <StackPanel>
        <ComboBox Name="ComboBox">
            <ComboBoxItem>Apple</ComboBoxItem>
            <ComboBoxItem>Orange</ComboBoxItem>
        </ComboBox>
        <Label Name="Label" />
    </StackPanel>
</Window>'
$ui = Import-Xaml $xaml

$ui.Controls['ComboBox'].add_SelectionChanged({
    param ( $sender, $eventArgs )

    $ui.Controls['Label'].Content = (
        'Selected a {0}' -f $sender.SelectedItem.Content
    )
})
$ui.MainWindow.ShowDialog()
