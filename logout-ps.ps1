$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36"
Invoke-WebRequest -UseBasicParsing -Uri "http://172.16.3.10/ess/commonauth" `
-Method "POST" `
-WebSession $session `
-Headers @{
"Cache-Control"="max-age=0"
  "Origin"="http://172.16.3.10"
  "Upgrade-Insecure-Requests"="1"
  "DNT"="1"
  "Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "Referer"="http://172.16.3.10/ess/commonauth"
  "Accept-Encoding"="gzip, deflate"
  "Accept-Language"="zh-CN,zh;q=0.9"
  "sec-gpc"="1"
} `
-ContentType "application/x-www-form-urlencoded" `
-Body "kind=logout&loginUniqueCodeForOnline=8f5005c3e067b3b76a952a5799d4ec54&userId=temp&nickName=&mac=342EB798DFCD&port=0&urlBeforeLogon=http%3A%2F%2F1.1.1.32%2F&vid=&ssid=NTZX&apmac=&userIp=10.66.26.151&t=wireless-v2&nasIp=172.16.3.18&secZoneName=&isMessageExist=&isPatchExist=&ssoUrl=&urlBeforeLogin=http%3A%2F%2F1.1.1.32%2F&loginPublishUrl=&enableCookie=&logoutCode=1&onlineTime=11&isRedirectModify=true&userIndex=10012&pswProtectionUrl=.%2Fpasswordprotectionservlet%3Fkind%3DtoPswProtectionConfigFromWeb%26urlBeforeLogin%3Dhttp%3A%2F%2F1.1.1.32%2F%26isFromSuccessPage%3Dtrue%26userIp%3D10.66.26.151&isFirstLogin=false&broadcastUrl=&onlineInfoShowEnable=false"