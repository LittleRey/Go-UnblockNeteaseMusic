FROM debian:stable-slim
ENV TLS_PORT=8433 PORT=8080

ADD mycloudreve.ini /root/cloudreve/mycloudreve.ini
ADD aria2.conf /root/aria2/aria2.conf
ADD trackers-list-aria2.sh /root/aria2/trackers-list-aria2.sh
ADD run.sh /root/cloudreve/run.sh


RUN chmod +x /root/cloudreve/cloudreve \
    && chmod +x /root/aria2/trackers-list-aria2.sh \
    && chmod +x /root/cloudreve/run.sh
RUN mkdir -p /root/Download



WORKDIR /gost
EXPOSE ${TLS_PORT} $PORT

CMD /root/cloudreve/run.sh
