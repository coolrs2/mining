#!/bin/bash
sudo su
screen -R mining
cat /sys/kernel/mm/transparent_hugepage/enabled
sysctl -w vm.nr_hugepages=1800
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.5.5/SRBMiner-Multi-0-5-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-5-5-Linux.tar.xz
cd SRBMiner-Multi-0-5-5
./SRBMiner-MULTI --algorithm yespower2b --pool stratum+tcp://stratum-eu.rplant.xyz:7022 --wallet BpXYpbJmz5fT1Co4V38TJDLk92wcQqRxov.AWZ --disable-gpu
