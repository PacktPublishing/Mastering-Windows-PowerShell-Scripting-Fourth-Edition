# Requires 4.0.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <Grid>
        <Grid.ColumnDefinitions>
            <ColumnDefinition />
            <ColumnDefinition />
        </Grid.ColumnDefinitions>
        <Grid.RowDefinitions>
            <RowDefinition />
            <RowDefinition />
        </Grid.RowDefinitions>
        <Label Content="Row 1, Column 1"
         Grid.Row="0" Grid.Column="0" />
        <Label Content="Row 1, Column 2"
         Grid.Row="0" Grid.Column="1" />
        <Label Content="Row 2, Column 1"
         Grid.Row="1" Grid.Column="0" />
        <Label Content="Row 2, Column 2"
         Grid.Row="1" Grid.Column="1" />
    </Grid>
</Window>'
Show-Window $xaml
