#!/bin/bash
clear
echo "1: Termux | 2: Linux Debian | 3: IOS"|
echo "Yazdıktan Sonra Enter Tıklayın"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/yavuz/spammer.py /data/data/com.termux/files/usr/bin/yavuz
	dos2unix /data/data/com.termux/files/usr/bin/yavuz
	chmod 777 /data/data/com.termux/files/usr/bin/yavuz
	yavuz
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "Root olarak çalıştırınız. (sudo sh ~/yavuz/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/yavuz/spammer.py /usr/bin/yavuz
			dos2unix /usr/bin/yavuz
			chmod 777 /usr/bin/yavuz
			yavuz
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/yavuz/spammer.py /usr/bin/yavuz
			dos2unix /usr/bin/yavuz
			chmod 777 /usr/bin/yavuz
			yavuz
		else
			echo "Hata oluştu!"
		fi
	fi
fi
