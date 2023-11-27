$policies = Get-CimInstance -Namespace "root\Microsoft\Windows\GroupPolicy" -ClassName "RSOP_PolicySetting"

$policies | Select-Object -Property Setting, Precedence, Value | Format-Table


