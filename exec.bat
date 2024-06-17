powershell -noprofile -ExecutionPolicy Bypass -command "& { Invoke-WebRequest -Uri 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile 'ChromeRemoteDesktopHost.msi' }"

msiexec /i ChromeRemoteDesktopHost.msi /quiet /norestart





REM go to https://remotedesktop.google.com/headless, copy the Windows (Cmd) code and replace the following code
"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" --code="4/0ATx3LY5IXtGjC14icOQC6krDg1ENfPMQjoYG0QhazGEM5tUCYa3aplVv4hwOnFRxunRt1w" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=%COMPUTERNAME% --pin=123456
