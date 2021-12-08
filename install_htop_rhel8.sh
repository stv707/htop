#!/bin/bash
# check root

if [ $LOGNAME == 'root' ]
then
        echo "rook OK"
else
        echo "run this as root"
fi

sudo dnf install ncurses-devel automake autoconf gcc git -y

cd ~

git clone https://github.com/stv707/htop.git

cd ~/htop

./autogen.sh && ./configure && make

make install

clear
echo "Installation is done - have fun - Steven"
echo "Press any key to exit....."
read