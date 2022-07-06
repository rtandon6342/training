Connect-AzAccount
new-azresourcegroup -name sanny5555 -location centralindia
New-AzStorageAccount -ResourceGroupName sanny5555 -Name ashok468 -Location centralindia -SkuName Standard_LRS
$resourceGroupName="sanny5555" 
$storageAccName="ashok468"
$storageContainerName="sanny1111"    
$storageAcc=Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccName        
$ctx=$storageAcc.Context   
New-AzStorageContainer -Name $storageContainerName -Context $ctx -Permission Container
$files = Get-ChildItem "C:\Users\Public\Pictures\Sample Pictures"
$localfile = "C:\Users\Public\Pictures\Sample Pictures\Tulips.jpg"
$remotefile = "Users\Public\Pictures\Sample Pictures\Tulips.jpg"
Set-AzStorageBlobContent -File $localfile -Container "sanny1111" -Blob $remotefile -Context $ctx