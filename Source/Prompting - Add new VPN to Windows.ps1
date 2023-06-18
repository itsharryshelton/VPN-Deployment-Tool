$VPNName = Read-Host -Prompt "Enter VPN Name"
$ServerAddress = Read-Host -Prompt "Enter VPN Address"
$TunnelType = "Automatic"
$EncryptionLevel = "Required"
$AuthenticationMethod = "MSChapv2"
$AllUserConnection = $false
$RememberCredential = Read-Host 'Remeber Credentials? "Yes" or "No"'
switch ($RememberCredential)
{
  Yes {$myVarConverted = $true; break}
  True {$myVarConverted = $true; break}
  No {$myVarConverted = $false; break}
  False {$myVarConverted = $false; break}
  default {"Invalid Input"; break}
}

# Add VPN connection
Add-VpnConnection -Name $VPNName -ServerAddress $ServerAddress -TunnelType $TunnelType -EncryptionLevel $EncryptionLevel -AuthenticationMethod $AuthenticationMethod -AllUserConnection $AllUserConnection -RememberCredential $RememberCredential

Write-Host "VPN Connection has been made, view it under Windows VPN Details"