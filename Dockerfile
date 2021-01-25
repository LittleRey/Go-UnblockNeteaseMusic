FROM node:12-alpine

LABEL summary="UnblockNeteaseMusic NodeJS for ARM"
LABEL description="UnblockNeteaseMusic NodeJS for ARM devices"
LABEL maintainer="test <test@test>"

ENTRYPOINT ["npx", "@nondanee/unblockneteasemusic"]

CMD /run.sh
