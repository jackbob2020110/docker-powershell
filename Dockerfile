FROM registry.cn-shanghai.aliyuncs.com/bcpublic/powershell:ubuntu-20.04-cntime
RUN pwsh -Command "Install-Module -Name EWS -Force;"
