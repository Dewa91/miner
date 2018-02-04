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
sleep 1
make install
cd bin/
rm -rf config.txt
wget 
chmod +x xmr-stak-cpu
sysctl -w vm.nr_hugepages=128

sleep 1
clear
echo "tahap installasi selesai, beberapa pertanyaan terakhir"
echo ""
echo "beberapa provider terkadang suspend vps jadi misal core vps ada 6 silakan input 4 (just saran)"
sleep 2
cd ~/xmr-stak-cpu/bin
screen -dmS mining ./xmr-stak-cpu
clear
echo "script mining telah dijalankan"
echo ""
echo "untuk melihat cpu usage gunakan perintah top"
echo "untuk melihat aktifitas mining dan  hashrate gunakan perintah screen -r kemudian tekan h"
echo "untuk menutup ctrl+a+d agar tetap jalan miningnya ^_^"
echo ""
echo "siap grak terima gaji ^_^"