# Requires 4.0.2

$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">

    <Grid>
        <Label Content="Hello world" />
    </Grid>
</Window>'
Show-Window $xaml
