# Requires 8.2.3

$ui.Controls['Button'].add_Click({
    $ui.PSHost.Commands.Clear()
    $ui.PSHost.AddScript({
        $dispatcher = $ui.Controls['Dispatcher']

        $dispatcher.Invoke( {
            $ui.Controls['Button'].IsEnabled = $false
        })
        $start = $dispatcher.Invoke([Func[object]]{
            $ui.Controls['TextBoxStart'].Text -as [int]
        })
        $end = $dispatcher.Invoke([Func[object]]{
            $ui.Controls['TextBoxEnd'].Text -as [int]
        })
        foreach ($number in $start..$end) {
            $ui.Controls['Dispatcher'].Invoke({
                $ui.Controls['Label'].Content = $number
            })
            Start-Sleep -Seconds 1
        }
        $ui.Controls['Dispatcher'].Invoke({
            $ui.Controls['Button'].IsEnabled = $true
        })
    }).BeginInvoke()
})
$ui.MainWindow.ShowDialog()
