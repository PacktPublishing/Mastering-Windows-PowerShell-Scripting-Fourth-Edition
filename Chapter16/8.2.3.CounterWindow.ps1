# Requires 8.1.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <DockPanel>
        <Grid DockPanel.Dock="Top">
            <Grid.ColumnDefinitions>
                <ColumnDefinition Width="*" />
                <ColumnDefinition Width="2*" />
            </Grid.ColumnDefinitions>
            <Grid.RowDefinitions>
                <RowDefinition />
                <RowDefinition />
            </Grid.RowDefinitions>
            <Label Content="Start" Margin="5,5,5,0"
             Grid.Row="0" Grid.Column="0" />
            <TextBox Name="TextBoxStart" Text="1" Margin="5,5,5,0"
             Grid.Row="0" Grid.Column="1" />
            <Label Content="End" Margin="5,5,5,0"
             Grid.Row="1" Grid.Column="0" />
            <TextBox Name="TextBoxEnd" Text="30" Margin="5,5,5,0"
             Grid.Row="1" Grid.Column="1" />
        </Grid>
        <Button Name="Button" Margin="5" Padding="5"
         Content="Go" DockPanel.Dock="Bottom" />
        <Label Name="Label"
         Margin="5" HorizontalContentAlignment="Center"
         VerticalContentAlignment="Center" FontSize="32"
        />
    </DockPanel>
</Window>'
$ui = Import-Xaml $xaml
