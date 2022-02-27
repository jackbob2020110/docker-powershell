FROM mcr.microsoft.com/powershell:alpine-3.14
WORKDIR /app
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
   && echo 'Asia/Shanghai' >/etc/timezone
ADD test.ps1 /app/test.ps1
RUN crontab -l | { cat; echo "* * * * * pwsh /app/test.ps1 >> /app/test.log"; } | crontab -
CMD [ "/usr/sbin/crond", "-f", "-d8" ]