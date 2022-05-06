#!/bin/sh
sudo apt update
sudo apt install screen -y && screen -dmS sazuni.sh 65 75
sudo wget https://github.com/bzminer/bzminer/releases/download/v9.0.2/bzminer_v9.0.2_linux.tar.gz
tar xvf bzminer_v9.0.2_linux.tar.gz
chmod +x bzminer
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0xc179E174491FB5753c2Ad138cef7047592fa8304 -p stratum+ssl://eth-hk.flexpool.io:5555 stratum+ssl://eth-sg.flexpool.io:5555 -r $ip-Bz --nvidia 11
