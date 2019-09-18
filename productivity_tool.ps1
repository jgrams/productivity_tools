$Blocklist = Get-Content %windir%\redirectlist
$HostfilePath = "C:\Windows\System32\drivers\etc\hosts"
$HostfileContents = Get-Content $HostfilePath

ForEach ($SiteUrl in $Blocklist) 
{	
	$Entry = "127.0.0.1 `t $SiteUrl"
	if ($HostfileContents -contains $Entry) {
		Add-content -path $HostfilePath -value $Entry
	} 
}