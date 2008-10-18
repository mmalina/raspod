#!/bin/bash

#Go to the directory of this script
cd `dirname $0`

#Install the binary into ~/bin/
echo "Installing raspod into ~/bin/"
if [ -f ~/bin/raspod ]
then
	echo "~/bin/raspod already exists, overriding..."
fi
cp ../bin/raspod ~/bin/

#Install the basic conf file if not present
echo "Installing raspod.conf into ~/.raspod/"
if [ -f ~/.raspod/raspod.conf ]
then
	echo "~/raspod/raspod.conf already exists, omitting..."
else
	#Create the dot dir if necessary
	if [ ! -d ~/.raspod ]
	then
		mkdir ~/.raspod
	fi
	cp ../conf/raspod.conf ~/.raspod/
fi
