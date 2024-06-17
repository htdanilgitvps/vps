curl https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi -o ChromeRemoteDesktopHost.msi

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart


set PIN=123456
::go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
set AUTH_CODE="%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY4o6om5tEVFyq3w5X5shu12zJyN_QpFKHpVvsGp6c8kF3geQwUgEdJLLPawGhAblw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%

%AUTH_CODE% --pin=%PIN%











:: to keep the process running
ping -t www.ntc.net.np
