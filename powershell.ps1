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
  "Referer"="http://172.16.3.10/ess/commonauth?wlanuserip=f6f56f4ed9b89a374f5903754baa8900&wlanacname=18260f9e92a595cfd34f9c8022b3386f&ssid=3e706e5f7edd56b3&nasip=2f2712843ef5231374136447c88bb569&mac=1266c1d4e64c7ba040e3409e0b538327&t=wireless-v2&url=2c0328164651e2b4c6b9a793419fd4f4"
  "Accept-Encoding"="gzip, deflate"
  "Accept-Language"="zh-CN,zh;q=0.9"
  "sec-gpc"="1"
} `
-ContentType "application/x-www-form-urlencoded" `
-Body "kind=preLogin&isEnableNickNameAuth=&mac=342EB798DFCD&port=0&urlBeforeLogon=http%3A%2F%2F1.1.1.32%2F&vid=&ssid=NTZX&apmac=&userIp=10.66.26.151&t=wireless-v2&enableEsaAuthen=&nasIp=172.16.3.18&enableNormalUserLogin=true&normalUserNotifyMd5Cookie=fab6e6fadf19156344ccfa54ecda7c2e&findPswUrl=.%2Fpasswordprotectionservlet%3Fkind%3DtoFindPasswordPage%26userIp%3D10.66.26.151&lastUserId=&readPasswordFromCookie=&passwordInCookie=&userIdInCookie=&sccpServerPort=53&sccpEncrytKey=ded7f05c25ef63be&sccpEncrytIV=ded7f05c25ef63be&sccpClientPort=138&sccpServerIp=172.16.3.10&sccpTimestamp=1639360244&commonUsernameInputTip=%D3%C3%BB%A7%C3%FB&commonPwdInputTip=%C3%DC%C2%EB&commonDisclaimerEnable=false&disclaimerTitle=&disclaimerContent=&disclaimerLoginBtn=&loginActionName=.%2Fcommonauth&loginUrl=commonauth&isSubmit=&exponent=10001&module=a938441d18faee693b506aa8ac973e7bf8e4b3c22ea4acc472d3a3b8a7baea16bec6951c52092606aae039603cc3b9dfca5e3f335a5ba4dd68036a67a5fac5bac5a4c3fc0a1e95af6fa7595fc2689ecb50c21f77698c96beb2bb405c4bd2ee9b744541819ec1c17388e56b309716849807a8699df2b436ffc6d7655c32ea75e5&isFromCookie=false&userId=temp&passwordText=%C3%DC%C2%EB&password=22b877b17688ec48b8b8193b7acdaa581a5bb74bbbe60a743229530a332ed0ef00a3c5c91ab993f06903509a1d6b2be38e65c6af891c4f41dfbf904b23bc937d67d2082238a6b322d8a26c10e52a2559715b4408cc17e2d509c99f16ba8d5226b1325851ed9956661cc0a757e79b5a28e15077b12e18470b493e0ac910afb819"