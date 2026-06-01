Add-Type -AssemblyName System.Windows.Forms
$dlg = New-Object System.Windows.Forms.OpenFileDialog
$dlg.Title = "Select your Stackly logo image"
$dlg.Filter = "Image Files|*.png;*.jpg;*.jpeg;*.webp|All Files|*.*"
$dlg.ShowHelp = $true
if($dlg.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    Copy-Item -Path $dlg.FileName -Destination "C:\Users\Admin\Desktop\Banking\assets\images\Logo1.webp.PNG" -Force
    Write-Host "SUCCESS: Logo copied from " $dlg.FileName
} else {
    Write-Host "Canceled"
}
