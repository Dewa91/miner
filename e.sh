echo "======== Auto install xmr-stak-cpu for ubuntu 16.04 ========="
echo ""
echo "Installing ..."

sleep 2
clear
#update repositori
apt-get --assume-yes update

#install package yang dibutuhkan
apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano cpulimit

#setup xmr-stak-cpu mining
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
make install
cd bin/
rm -rf config.txt
wget https://raw.githubusercontent.com/dewaantara/miner/master/config.txt
chmod +x xmr-stak-cpu
sysctl -w vm.nr_hugepages=128

sleep 1
cd ~/xmr-stak-cpu/bin
screen -dmS mining ./xmr-stak-cpu
echo "script mining telah dijalankan"
echo "untuk menutup ctrl+a+d agar tetap jalan miningnya ^_^"
echo ""
echo "siap grak terima gaji ^_^"
