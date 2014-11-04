FNS_Debian7
===========================================

Auto Install Script For VPS Debian7 - www.fornesia.com

wget http://repo.fornesia.com/debian7.sh  
bash debian7.sh  
  
or  
  
wget https://github.com/ForNesiaFreak/FNS_Debian7/raw/fornesia.com/debian7.sh  
bash debian7.sh  
  
===========================================  
Autoscript Include:
-------



Service
-------
OpenSSH : 22, 143  
Dropbear : 443, 110, 109  
Squid3 : 80, 8080 (limit to IP SSH)  
badvpn : badvpn-udpgw port 7300  
nginx : 81  

Tools
-----
axel, bmon, htop, iftop, mtr, rkhunter, nethogs: nethogs venet0

Script
------
screenfetch  
./ps_mem.py (Cek RAM)  
./speedtest_cli.py --share (Speed Test VPS)  
./bench-network.sh (Cek Kualitas VPS)  
./user-login.sh (Monitoring User Login)  
./user-expired.sh (Auto Lock User Expire tiap jam 00:00)  
./user-list.sh (Melihat Daftar User)  
sh dropmon [port] contoh: sh dropmon 443  

Fitur lain
----------
Webmin : http://IPVPS:10000/  
vnstat : http://IPVPS:81/vnstat/ (Cek Bandwith)  
MRTG : http://IPVPS:81/mrtg/  
Timezone : Asia/Jakarta (GMT +7)  
Fail2Ban : [on]  
IPv6 : [off]  

===========================================

VPS AUTO REBOOT TIAP 1 HARI

===========================================
