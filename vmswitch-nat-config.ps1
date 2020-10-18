Import-Module Hyper-V

New-VMSwitch -Name "NATSwitch" -SwitchType Internal
New-NetIPAddress -IPAddress 192.168.8.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch)"
New-NetNat -Name "NATNetwork" -InternalIPInterfaceAddressPrefix 192.168.8.0/24