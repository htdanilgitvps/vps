curl https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi -o ChromeRemoteDesktopHost.msi

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart


PIN=123456
REM go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY7CWdLkjV624ooJsDC4yTX1E-iHDUNJE5CmsyExX10S_bpBWYOABsM6b-V1QZTwoA" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME%

%AUTH_CODE% --pin %PIN%
