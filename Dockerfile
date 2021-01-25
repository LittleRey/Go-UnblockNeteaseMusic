FROM debian:stable-slim

COPY wwwroot.tar.gz /wwwroot/wwwroot.tar.gz
COPY UnblockNeteaseMusic /netease/UnblockNeteaseMusic
COPY server.crt /netease/server.crt
COPY server.key /netease/server.key
COPY run.sh /root/netease/run.sh

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode\
    && chmod +x /entrypoint.sh

RUN chmod +x /netease/UnblockNeteaseMusic \
    && chmod +x /netease/server.crt \
    && chmod +x /netease/server.key

WORKDIR /netease

CMD exec
