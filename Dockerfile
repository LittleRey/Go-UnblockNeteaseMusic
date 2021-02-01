FROM nondanee/unblockneteasemusic:latest

RUN apk add --update nodejs npm --repository=http://dl-cdn.alpinelinux.org/alpine/latest-stable/main/


WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .


ENTRYPOINT ["node", "app.js"]


CMD /run.sh
