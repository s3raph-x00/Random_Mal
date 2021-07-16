$File = "C:\Users\IamGroot\Downloads\securestring.txt"; $Key = [byte]1..16; $Password = Get-Content $File | ConvertTo-SecureString -Key $Key
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password); $UnsecurePassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR); Write-Host "The Password is" $UnsecurePassword
