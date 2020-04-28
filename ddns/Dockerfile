#
# Dockerfile for ddns
#

FROM alpine

COPY ./*.sh /app/

WORKDIR /app/

ENV Time="* 24 * * *"
ENV Script="aliyun"
ENV ApiId="123456789"
ENV ApiKey="111111111111111111"
ENV Domain="example.com"
ENV SubDomain="www"


RUN	apk add --no-cache wget ca-certificates openssl && \
	chmod +x /app/*.sh && \
	touch /app/cron.log

CMD "/app/$Script.sh" && echo "$Time /app/$Script.sh" > /etc/crontabs/root && crond -f
