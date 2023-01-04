@echo off
mkdir c:\install
cd c:\install
curl --output "python.exe" "https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe"
python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0 SimpleInstall=1 AppendPath=1
cmd /C python -m pip install requests
