#!/bin/bash
source /etc/profile
source /root/.bash_profile


sync
echo 3 > /proc/sys/vm/drop_caches
