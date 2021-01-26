FROM debian:sid

COPY wwwroot.tar.gz /wwwroot/wwwroot.tar.gz
COPY UnblockNeteaseMusic /netease/UnblockNeteaseMusic
COPY server.crt /netease/server.crt
COPY server.key /netease/server.key
COPY run.sh /run.sh





CMD /run.sh
