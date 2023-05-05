@echo off
mkdir c:\install\software
cd c:\install\software

######

setlocal EnableDelayedExpansion
echo Ermittlung der Download-URL für Firefox...
set URL=https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US

for /f "delims=" %%a in ('powershell -command "(New-Object System.Net.WebClient).DownloadString('%URL%')" ^| findstr /i "https://download.mozilla.org"') do (
    set "DOWNLOAD_URL=%%a"
)

echo Herunterladen von Firefox...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('%DOWNLOAD_URL%', 'FirefoxSetup.exe')"

echo Installieren von Firefox...
start /wait "" FirefoxSetup.exe -ms

echo Bereinigung...
del FirefoxSetup.exe

######

echo Installing Python...
set PYTHON_INSTALL_PATH=C:\Program Files\Python311
start /wait "" "https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe" /quiet TargetDir=%PYTHON_INSTALL_PATH%

echo Installing requests...
setx PATH "%PATH%;%PYTHON_INSTALL_PATH%;%PYTHON_INSTALL_PATH%\Scripts"
%PYTHON_INSTALL_PATH%\Scripts\pip install requests
echo Done!
