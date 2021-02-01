FROM alpine
RUN apk add --update nodejs npm --repository=http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/

ENV NODE_ENV production

COPY wwwroot.tar.gz /wwwroot/wwwroot.tar.gz
COPY run.sh /run.sh


RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget unzip qrencode \
    && chmod +x /wwwroot/wwwroot.tar.gz \
    && chmod +x /run.sh

FROM nondanee/unblockneteasemusic:latest


WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .


ENTRYPOINT ["node", "app.js"]

run nondanee/unblockneteasemusic -p 8080
CMD /run.sh
