#!/bin/bash

# use iana root key
echo ". IN DS 19036 8 2 49AAC11D7B6F6446702E54A1607371607A1A41855200FD2CE1CDDE32F24E8FB5" | tee /var/lib/unbound/root.key
unbound-anchor -a "/var/lib/unbound/root.key"
chown unbound:unbound /var/lib/unbound/root.key

# launch unbound
/usr/sbin/unbound -d -c /etc/unbound/unbound.conf
