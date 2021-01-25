FROM debian:stable-slim
ENV TLS_PORT=8433 PORT=8080

ADD UnblockNeteaseMusic /netease/UnblockNeteaseMusic
ADD server.crt /netease/server.crt
ADD server.key /netease/server.key
ADD run.sh /root/netease/run.sh


RUN chmod +x /netease/UnblockNeteaseMusic \
    && chmod +x /netease/server.crt \
    && chmod +x /netease/server.key


WORKDIR /netease

CMD /netease/run.sh
