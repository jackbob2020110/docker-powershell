FROM registry.cn-shanghai.aliyuncs.com/bcpublic/powershell:sqlv1
RUN pwsh -Command "Install-Module -Name DnsClient-PS -Force;Install-Module -Name PSTeams -Force;Install-Module -Name EWS -Force"