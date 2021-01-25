FROM debian:sid
run --name yunmusic -d -p 6666 nondanee/unblockneteasemusic

CMD /run.sh
