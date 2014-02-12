Docker file which installs oracle-xe
====================================

I wanted to have docker file (not image...) that would install oracle-xe. 
After some fighting I managed to set up configuration (at least I hope so...). To run it you have to get oracle-xe_11.2.0-2_amd64.deb file

with sudo alien --scripts -d oracle-xe-11.2.0-1.0.x86_64.rpm
if alien is missing execute
sudo apt-get install alien 


that is, download it from oracle site and run it through alien. Then you have to put in files directory and you're ready to run docker build.

NEW:
if ýou would like to install also oracle insant client + sqlplus you need to remove the comments in the install.sh script and also supply the devel, basic and sqlplus package from 

http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html

bevore executing the build they must be converted to deb files with 
alien -d oracle-instantclient12.1-*.rpm

Credits 
* https://forums.oracle.com/thread/2303639 
* https://index.docker.io/u/kimh/oracledb
* https://help.ubuntu.com/community/Oracle%20Instant%20Client
