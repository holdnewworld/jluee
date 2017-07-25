#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Check Root
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }


cp -r /usr/local/jluee/DenyHosts-2.6 /root
cd DenyHosts-2.6/
python setup.py install
echo 'python setup.py install'
cp /usr/local/jluee/DenyHosts-2.6/denyhosts.cfg /usr/share/denyhosts/denyhosts.cfg
echo 'cp /usr/local/jluee/DenyHosts-2.6/denyhosts.cfg /usr/share/denyhosts/denyhosts.cfg'
cp /usr/share/denyhosts/daemon-control-dist /usr/share/denyhosts/daemon-control
echo 'cp /usr/share/denyhosts/daemon-control-dist /usr/share/denyhosts/daemon-control'
chown root /usr/share/denyhosts/daemon-control
echo 'chown root /usr/share/denyhosts/daemon-control'
chmod 755 /usr/share/denyhosts/daemon-control
echo 'chmod 755 /usr/share/denyhosts/daemon-control'
ln -s /usr/share/denyhosts/daemon-control /etc/init.d/denyhosts
echo 'ln -s /usr/share/denyhosts/daemon-control /etc/init.d/denyhosts'
cp /usr/local/bin/denyhosts.py /usr/bin
echo 'cp /usr/local/bin/denyhosts.py /usr/bin'
/etc/init.d/denyhosts start
echo '/etc/init.d/denyhosts start'
echo 'success'
echo "sshd:49.140.103.2" >> /etc/hosts.allow

bash ssr