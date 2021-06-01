# Requires 7.1.1

$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )

    $ui.MainWindow.Close()
})
$ui.MainWindow.ShowDialog()
