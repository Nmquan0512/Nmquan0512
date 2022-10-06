rm -rf runblockspeedtest.x
clear
echo "NMQUAN"
echo "đang chạy chặn myip"
echo -e ""
sleep 5
sudo apt install iptables-persistent netfilter-persistent
iptables -I INPUT -s whatismyipaddress.com -j DROP
iptables -I INPUT -s www.whatismyip.com -j DROP
iptables -I INPUT -s www.ipaddress.my -j DROP
iptables -I INPUT -s www.ip2location.com -j DROP
iptables -I INPUT -s www.iplocation.net -j DROP
iptables -I INPUT -s iplocation.com -j DROP
iptables -I INPUT -s ipaddressworld.com -j DROP
iptables -I INPUT -s www.maxmind.com -j DROP
iptables -I INPUT -s checkip.vip -j DROP
iptables -I INPUT -s check-host.net -j DROP
iptables -I INPUT -s www.showmyip.com -j DROP
iptables -I INPUT -s www.expressvpn.com -j DROP
iptables -I INPUT -s whoer.net -j DROP
iptables -I INPUT -s www.hide-my-ip.com -j DROP
iptables -I INPUT -s www.top10vpn.com -j DROP
iptables -I INPUT -s www.privateinternetaccess.com -j DROP
iptables -I INPUT -s www.myip.com -j DROP
iptables -I INPUT -s zoogvpn.com -j DROP
iptables -I INPUT -s www.bluehost.com -j DROP
iptables -I INPUT -s www.whatismyip-address.com -j DROP
iptables -I INPUT -s browserleaks.com -j DROP
iptables -I INPUT -s surfshark.com -j DROP
iptables -I INPUT -s checkip.com.vn -j DROP
iptables -I INPUT -s whois.inet.vn -j DROP
iptables -I INPUT -s kiemtraip.com -j DROP
iptables -I INPUT -s diachiip.com -j DROP
iptables -I INPUT -p tcp -m tcp --dport 22 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -I INPUT -p tcp -m tcp --dport 443 -j ACCEPT
iptables-save  > /etc/iptables/rules.v4
systemctl start netfilter-persistent
systemctl restart netfilter-persistent
systemctl enable netfilter-persistent
systemctl status netfilter-persistent
clear
echo " chặn myip"
echo -e ""
sleep 3
clear
