$query = '
  SELECT *
  FROM Win32_SERVICE
  WHERE DisplayName="Print Spooler"
'
$service = ([WmiSearcher]$query).Get()
$service.StopService()     # Call the StopService method
$service.StartService()    # Call the StartService method
