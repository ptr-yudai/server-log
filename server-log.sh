#!/bin/sh
# [!] Put this file to /etc/server-log.sh

## Only specific ports
/usr/sbin/tcpdump -i eth0 -G 3600 -w /var/log/server-log/packet-%Y%m%d-%H%M.pcap port 80 or port 443

## All ports except for 22
#/usr/sbin/tcpdump -i eth0 -G 3600 -w /var/log/server-log/packet-%Y%m%d-%H%M.pcap not port 22
