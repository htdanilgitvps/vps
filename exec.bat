curl https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi -o ChromeRemoteDesktopHost.msi

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart





REM go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY7yRQKEsvjulxEIIv-q5btvWxSNn1sWueynmu8gss5JnGIdEYN_uIZvmSgWtyWfvw" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%
