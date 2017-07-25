#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Check Root
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }

cp /usr/local/jluee/usergenerate.py /usr/local/shadowsocksr
cd /usr/local/shadowsocksr
python /usr/local/shadowsocksr/usergenerate.py
cd /root
cp /usr/local/shadowsocksr/a.txt /root