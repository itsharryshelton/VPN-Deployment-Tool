$VPNName = "VPN Name" #Edit me for name of VPN
$ServerAddress = "Address" #Edit me for server address
$TunnelType = "Automatic" #Can be changed to: Pptp, L2tp, Sstp, Ikev2, Automatic
$EncryptionLevel = "Required" #Can be changed to: NoEncryption, Optional, Required, Maximum, Custom
$AuthenticationMethod = "MSChapv2" #Can be changed to: Pap, Chap, MSChapv2, Eap, MachineCertificate
$AllUserConnection = $false #Ture or False, adds to global VPN phone book
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

#Little confirmation that the script ran through okay
Write-Host "VPN Connection has been made, view it under Windows VPN Details"