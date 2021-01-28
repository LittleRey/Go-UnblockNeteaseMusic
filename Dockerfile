FROM debian:sid


COPY UnblockNeteaseMusic /netease/UnblockNeteaseMusic
COPY server.crt /netease/server.crt
COPY server.key /netease/server.key
COPY run.sh /run.sh


RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode \
    && chmod +x /netease/UnblockNeteaseMusic \
    && chmod +x /netease/server.crt \
    && chmod +x /netease/server.key \
    && chmod +x /run.sh


CMD /run.sh
