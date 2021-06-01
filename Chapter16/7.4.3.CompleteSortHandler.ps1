# Requires 7.4.1

$sortHandler = {
    param ( $sender, $eventArgs )

    $direction = 'Ascending'
    $listView = $ui.Controls['ListView']
    $dataView = [System.Windows.Data.CollectionViewSource]::GetDefaultView(
        $listView.ItemsSource
    )

    if ($dataView.SortDescriptions) {
        $sortDescription = $dataView.SortDescriptions[0]

        if ($sortDescription.PropertyName -eq $sender.Content) {
            $direction = $sortDescription.Direction -bxor 1
        }
        $dataView.SortDescriptions.Clear()
    }

    $dataView.SortDescriptions.Add(@{
        Direction    = $direction
        PropertyName = $sender.Content
    })
}
