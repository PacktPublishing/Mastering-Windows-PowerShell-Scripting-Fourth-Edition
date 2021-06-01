# Requires 7.4.1

$ui.Controls['Button'].add_Click({
    param ( $sender, $eventArgs )

    $data = Get-Process | Select-Object Name, ID, StartTime

    $listView = $ui.Controls['ListView']
    $listView.ItemsSource = $data

    $listView.View.Columns.Clear()
    foreach ($property in $data[0].PSObject.Properties) {
        $column = @{
            DisplayMemberBinding = (
                [System.Windows.Data.Binding]$property.Name
            )
            Header               = (
                [System.Windows.Controls.GridViewColumnHeader]@{
                    Content = $property.Name
                }
            )
        }
        $listView.View.Columns.Add($column)

        $column.Header.add_Click($sortHandler)
    }
})
$ui.MainWindow.ShowDialog()
