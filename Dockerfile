FROM microsoft/windowsservercore
MAINTAINER kenorb
LABEL Description="Development container based on Windows"
RUN powershell -Command Add-WindowsFeature FS-FileServer
RUN powershell -Command Add-WindowsFeature Web-Server
RUN powershell -Command Add-WindowsFeature NET-Framework-45-ASPNET
RUN powershell -Command Add-WindowsFeature Web-Asp-Net45
RUN mkdir /workspace
CMD ["powershell"]
