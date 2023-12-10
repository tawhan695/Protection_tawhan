#!/bin/bash
cd ~
echo 3 > /proc/sys/vm/drop_caches
cd Protection_tawhan
./main
