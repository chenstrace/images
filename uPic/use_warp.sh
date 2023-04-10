sudo /home/ubuntu/warp.sh rwg > /dev/null 2> /dev/null
sudo cp /etc/danted.conf.wgcf /etc/danted.conf 2> /dev/null
sudo systemctl restart danted 2> /dev/null
curl ifconfig.me 2> /dev/null
echo
echo "wgcf ok"
