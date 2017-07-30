#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

iptables -A OUTPUT -p udp -m multiport --dport 24,25,50,57,105,106,109,110,143,158,209,218,220,465,587 -j DROP
iptables -A OUTPUT -p udp -m multiport --dport 993,995,1109,24554,60177,60179 -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore < /etc/iptables.up.rules