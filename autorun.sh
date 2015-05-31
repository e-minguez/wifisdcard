#!/bin/bash
rm -rf /bin/vi /bin/free /bin/lsmod /usr/bin/which /usr/bin/top
ln -s /mnt/sd/stuff/busybox-armv5l /bin/free
ln -s /mnt/sd/stuff/busybox-armv5l /bin/lsmod
ln -s /mnt/sd/stuff/busybox-armv5l /bin/ifconfig
ln -s /mnt/sd/stuff/busybox-armv5l /bin/cut
ln -s /mnt/sd/stuff/busybox-armv5l /bin/expr
ln -s /mnt/sd/stuff/busybox-armv5l /bin/vi
ln -s /mnt/sd/stuff/busybox-armv5l /bin/route
ln -s /mnt/sd/stuff/busybox-armv5l /bin/nc
ln -s /mnt/sd/stuff/busybox-armv5l /bin/free
ln -s /mnt/sd/stuff/busybox-armv5l /bin/lsmod
ln -s /mnt/sd/stuff/busybox-armv5l /bin/ftpd
ln -s /mnt/sd/stuff/busybox-armv5l /bin/nohup

ln -s /mnt/sd/stuff/busybox-armv5l /usr/bin/which
ln -s /mnt/sd/stuff/busybox-armv5l /usr/bin/top

nohup tcpsvd -vE 0.0.0.0 21 ftpd -w / < /dev/null > /dev/null &
/mnt/sd/stuff/busybox-armv5l telnetd -l/bin/bash
