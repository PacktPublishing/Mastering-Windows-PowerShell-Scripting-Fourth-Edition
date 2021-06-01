# Windows PowerShell only.
# Requires 3.2.15
# SimpleSOAP must be running via Visual Studio.

('{0}.SearchCondition' -f $service.GetType().Namespace -as [Type])::new()
