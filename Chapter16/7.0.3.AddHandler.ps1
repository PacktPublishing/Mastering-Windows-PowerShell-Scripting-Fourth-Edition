# Requires 7.0.1

$ui.MainWindow.add_KeyDown({
    param ( $sender, $eventArgs )

    if ($eventArgs.Key -eq 'ESC') {
        $sender.Close()
    }
})
