Docker file which installs oracle-xe
====================================

I wanted to have docker file (not image...) that would install oracle-xe. 
After some fighting I managed to set up configuration (at least I hope so...). To run it you have to get oracle-xe_11.2.0-2_amd64.deb file

#Oracle XE

with `sudo alien --scripts -d oracle-xe-*.rpm`
if alien is missing execute
`sudo apt-get install alien`



#SQLplus:
if ýou would like to install also oracle instant client + sqlplus you need to remove the comments in the install.sh script and also supply the devel, basic and sqlplus package from 

http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html

bevore executing the build they must be converted to deb files with 
`alien -d oracle-instantclient12.1-*.rpm`.

#Build
before you can build move all created .deb files to the files directory. 


Credits 
* [Oracle thread about ubuntu installation](https://forums.oracle.com/thread/2303639) 
* [Existing oracle docker image by kimh](https://index.docker.io/u/kimh/oracledb)
* [How to install oracle xe on ubuntu](https://help.ubuntu.com/community/Oracle%20Instant%20Client)
