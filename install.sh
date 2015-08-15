#!/bin/bash

sudo apt-get install libusb-dev libzmq-dev
wget --no-check-certificate https://github.com/think-free/pi-packages/raw/master/libhid-0.2.16-rpi.tar.gz
tar xvf libhid-0.2.16-rpi.tar.gz
cd libhid-0.2.16
./configure --prefix=/
make
sudo make install
cd ..

git clone https://github.com/prophetmaster/wmr100.git
chmod -R 777 wmr100
cd wmr100
make
