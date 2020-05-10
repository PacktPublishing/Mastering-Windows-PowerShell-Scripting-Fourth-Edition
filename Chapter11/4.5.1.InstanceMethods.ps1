$query = '
SELECT *
FROM Win32_SERVICE
WHERE DisplayName="DNS Client"
'
$service = ([WmiSearcher]$query).Get()
$service.StopService()     # Call the StopService method
$service.StartService()    # Call the StartService method
