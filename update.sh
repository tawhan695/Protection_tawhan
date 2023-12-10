#!/bin/bash
cd ~
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
cp Protection_tawhan/data.json data.json.backup
cp Protection_tawhan/token.txt token.txt.backup
rm -r Protection_tawhan
git clone https://github.com/tawhan695/Protection_tawhan.git
cp data.json.backup Protection_tawhan/data.json
cp token.txt.backup Protection_tawhan/token.txt
cd Protection_tawhan
go build main.go
cd ~
cp Protection_tawhan/update.sh update.sh
chmod +x update.sh
cp Protection_tawhan/bot.sh bot.sh
chmod +x bot.sh
reboot
