# Dockerfile for axd-register
# Build with:
# docker build -t axd-register .
# Run with:
# docker run --rm -p 1001:1001 -d -v /tmp/logs:/opt/logs --name axd-register axd-register

FROM openjdk:8-jre-alpine
MAINTAINER wangyijie <wangyj@wangushengshi.com>

ENV VERSION 1.0

RUN echo "http://mirrors.aliyun.com/alpine/v3.6/main" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.6/community" >> /etc/apk/repositories \
    && apk update upgrade \
    && apk add --no-cache procps unzip curl bash tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

ADD /target /opt

EXPOSE 10001

ENTRYPOINT [ "sh", "-c", "java -jar /opt/axd-register-1.0-SNAPSHOT.jar" ]