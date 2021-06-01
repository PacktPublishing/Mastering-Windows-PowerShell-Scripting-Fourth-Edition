# Requires 4.0.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">

    <Grid ShowGridLines="True">
        <Grid.RowDefinitions>
            <RowDefinition />
            <RowDefinition />
            <RowDefinition />
            <RowDefinition />
        </Grid.RowDefinitions>

        <TextBox Text="No margin, no padding"
         Grid.Row="0" />
        <TextBox Text="Margin, no padding" Margin="5"
         Grid.Row="1" />
        <TextBox Text="Padding, no margin" Padding="5"
         Grid.Row="2" />
        <TextBox Text="Padding and margin" Padding="5" Margin="5"
         Grid.Row="3" />
    </Grid>
</Window>'
Show-Window $xaml
