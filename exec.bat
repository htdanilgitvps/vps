curl https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi -o ChromeRemoteDesktopHost.msi
curl https://download.anydesk.com/AnyDesk.exe -o c:\Users\runneradmin\Downloads\AnyDesk.exe

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart


set PIN=123456
::go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
set AUTH_CODE="%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY67BIYjQg3s2Ko3Va9RD9sA1f3-iBTJSNCQitWGxpGNZNWCNTkkTrHETc27a9v6uQ" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%

%AUTH_CODE% --pin=%PIN%










c:\Users\runneradmin\Downloads\AnyDesk.exe
:: to keep the process running
pause
