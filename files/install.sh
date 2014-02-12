#install all necessary packages
apt-get update
apt-get -y install libaio1 net-tools bc nano

cd /tmp/filesOracle

#comment in for install sqlplus 12.1
#echo /usr/lib/oracle/12.1/client64/lib/ > /etc/ld.so.conf.d/oracle.conf
##dpkg -i /tmp/filesOracle/oracle-instantclient12.1-*.deb
#ldconfig

#resolve some stupid link conflits
ln -s /usr/bin/awk /bin/awk
mkdir /var/lock/subsys
cp chkconfig /sbin/chkconfig
chmod 755 /sbin/chkconfig
ln -s /proc/mounts /etc/mtab

dpkg --install /tmp/filesOracle/oracle-xe_11.2.0-2_amd64.deb

#change memory_target
cp init.ora $ORACLE_HOME/config/scripts
cp initXETemp.ora $ORACLE_HOME/config/scripts

#final configuration
/usr/bin/printf 8080\\n1521\\nsa\\nsa\\ny\\n | /etc/init.d/oracle-xe configure

cp run.sh /
cp createListener.sh /
