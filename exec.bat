curl https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi -o ChromeRemoteDesktopHost.msi

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart


set PIN=123456
::go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
set AUTH_CODE="%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY6_im7nO_O244Woms5dHcTcwUgWwxOw74HPlavDLUf-QXX4y8vRQVhezIyjWro11A" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%

%AUTH_CODE% --pin=%PIN%
