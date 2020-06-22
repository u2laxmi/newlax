#!/bin/sh

a=`httpd -version | grep Apache`

if [ -z "$a" ]
then
	sudo yum install httpd -y
else 

	echo "apache is already installed"
fi
b=`git --version`
if [ -z "$b" ]
then
        sudo yum install git -y
else

        echo "git is already installed"
fi

rm -rf newlax
git clone git@github.com:u2laxmi/newlax.git
cd newlax
sudo bash scp1.sh

