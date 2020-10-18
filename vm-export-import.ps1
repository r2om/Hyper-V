Import-Module Hyper-V

$VMName = "VM1"
$ExportPath = "D:\VM_IMAGE\$VMName"
$NewVMName = "VM2"
$VMDir = "D:\VM\"

Export-VM -Name $VMName -Path $ExportPath
Import-VM -Path 'D:\ate\images\ate-windows-base\Virtual Machines\2005C276-155C-4AD1-8DB6-963EDFB6DB84.vmcx' -Copy -GenerateNewId -VirtualMachinePath D:\working-images\img001 -VhdDestinationPath 'D:\working-images\img001\Virtual Hard Disks'
$VM = Get-VM | Where-Object {$_.Path.StartsWith('D:\working-images\img001')}
Rename-VM -VM $VM -NewName img001