$Net4 = (get-childitem Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles) | where-object {($_ | Get-ItemProperty).ProfileName -like "*Network 4*"};
Set-ItemProperty -path $Net4.PSPath -Name ProfileName -Value "CarvedRockCorpNet";
$Net3 = (get-childitem Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles) | where-object {($_ | Get-ItemProperty).ProfileName -like "*Network 3*"};
Set-ItemProperty -path $Net3.PSPath -Name ProfileName -Value "Internal";
