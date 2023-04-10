sudo /home/ubuntu/warp.sh dwg > /dev/null 2> /dev/null
sudo cp /etc/danted.conf.eth0 /etc/danted.conf 2> /dev/null
sudo systemctl restart danted 2> /dev/null
curl ifconfig.me 2> /dev/null
echo
echo "eth0 ok"
