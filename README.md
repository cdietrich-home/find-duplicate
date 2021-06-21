# find-duplicate
Powershell finds first duplicate char in string

To run
Import-Module -Name .\FindFirstDuplicate.psm1  # If running from directory with module file else use full path to file.

Get-FirstDuplicateInString -PassedString "string"
 
#or
 
$foo = "string"

$foo | Get-FirstDuplicateInString
