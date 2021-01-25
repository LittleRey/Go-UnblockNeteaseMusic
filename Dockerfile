FROM debian:sid
docker run --name yunmusic -d -p 6666 nondanee/unblockneteasemusic
docker ps
CMD /run.sh
