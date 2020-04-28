FROM alpine
ARG ARCH=amd64
ARG TOKEN_ARG
RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

ENV FRP_VERSION 0.32.0
RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
    && tar -xf frp_${FRP_VERSION}_linux_${ARCH}.tar.gz \
    && mkdir -p /frps/log \
    && cp frp_${FRP_VERSION}_linux_${ARCH}/frps* /frps/ \
    && rm -rf frp_${FRP_VERSION}_linux_${ARCH}*

# Clean APK cache
RUN rm -rf /var/cache/apk/*
COPY ./frps.ini /frps/frps.ini
VOLUME /frps/log

WORKDIR /frps

ENV TOKEN=${TOKEN_ARG}
ENTRYPOINT ["./frps","-c","/frps/frps.ini"]