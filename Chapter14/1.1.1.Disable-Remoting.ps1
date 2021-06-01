Disable-PSRemoting

# Expects warning:
#
# WARNING: Disabling the session configurations does not undo all the changes made by the Enable-PSRemoting or Enable-PSSessionConfiguration cmdlet. You might have to manually undo the changes by following these steps:
# 1. Stop and disable the WinRM service.
# 2. Delete the listener that accepts requests on any IP address.
# 3. Disable the firewall exceptions for WS-Management communications.
# 4.Restore the value of the LocalAccountTokenFilterPolicy to 0, which restricts remote access to members of the Administrators group on the computer.
