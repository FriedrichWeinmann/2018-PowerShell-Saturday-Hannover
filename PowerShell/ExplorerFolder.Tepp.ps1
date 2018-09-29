Register-PSFTeppScriptblock -Name 'explorer-knownfolder-names' -ScriptBlock {
	(Get-ExplorerFolder).Name
}
Register-PSFTeppScriptblock -Name 'explorer-knownfolder-names-defined' -ScriptBlock {
	(Get-ExplorerFolder | Where-Object IsDefined).Name
}
Register-PSFTeppArgumentCompleter -Command Set-ExplorerFolder -Parameter Name -Name 'explorer-knownfolder-names'
Register-PSFTeppArgumentCompleter -Command Get-ExplorerFolder -Parameter Name -Name 'explorer-knownfolder-names'
Register-PSFTeppArgumentCompleter -Command Remove-ExplorerFolder -Parameter Name -Name 'explorer-knownfolder-names-defined'