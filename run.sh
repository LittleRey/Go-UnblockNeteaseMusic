C_VER="v1.0.3"
mkdir /caddybin
cd /caddybin
CADDY_URL="https://github.com/caddyserver/caddy/releases/download/$C_VER/caddy_${C_VER}_linux_amd64.tar.gz"
echo ${CADDY_URL}
wget --no-check-certificate -qO 'caddy.tar.gz' ${CADDY_URL}
tar xvf caddy.tar.gz
rm -rf caddy.tar.gz
chmod +x caddy

cd /wwwroot
tar xvf wwwroot.tar.gz
rm -rf wwwroot.tar.gz

cat <<-EOF > /caddybin/Caddyfile
http://0.0.0.0:${PORT}
{
	
        proxy / localhost:8080

}
EOF


cd /netease
./UnblockNeteaseMusic -p 6666 -sp 6667 -c /server.crt -k /server.key -m 0 -o migu:kuwo:kugou -e &
cd /caddybin
./caddy -conf="Caddyfile"


