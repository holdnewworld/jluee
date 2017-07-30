#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#change time zone to shanghai
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ntpdate us.pool.ntp.org
echo `date`
echo '切换时区为shanghai'
echo ''

#add autoreboot at 02:00 everyday
echo '00 2  * * * root /sbin/reboot' >> /etc/crontab
service cron restart
echo "设置服务器在每天凌晨2点重启"
echo ''