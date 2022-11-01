FROM registry.cn-shanghai.aliyuncs.com/bcpublic/powershell:ubuntu-20.04-cntime
RUN pwsh -Command "Install-Module -Name DnsClient-PS -Force;Install-Module -Name PSTeams -Force;Install-Module -Name EWS -Force"
