sudo apt update
sudo apt install -y squid dante-server net-tools lrzsz

wget --tries 20 --retry-connrefused https://raw.githubusercontent.com/chenstrace/images/main/uPic/danted.conf.eth0
wget --tries 20 --retry-connrefused https://raw.githubusercontent.com/chenstrace/images/main/uPic/danted.conf.wgcf
wget --tries 20 --retry-connrefused https://raw.githubusercontent.com/chenstrace/images/main/uPic/use_warp.sh
wget --tries 20 --retry-connrefused https://raw.githubusercontent.com/chenstrace/images/main/uPic/use_eth0.sh
wget --tries 20 --retry-connrefused https://raw.githubusercontent.com/chenstrace/images/main/uPic/tnet-linux.jpg -O tnet
wget --tries 20 --retry-connrefused git.io/warp.sh

chmod +x tnet
chmod +x use_warp.sh
chmod +x use_eth0.sh
chmod +x warp.sh

nohup ./tnet endpoint --tunnel-listen=ws://0.0.0.0:8085/test --crypt-key=908070 >/dev/null 2>&1 &
sudo ./warp.sh 4
./use_warp.sh

