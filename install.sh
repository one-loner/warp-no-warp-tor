apt-get install -y dante-server tor shadowsocks-libev
cd && bash <(curl -fsSL git.io/warp.sh) proxy
warp-cli proxy port 45678
warp-cli connect
mv /etc/danted.conf /etc/danted.conf.default
cp danted.conf /etc/danted.conf
systemctl restart danted
