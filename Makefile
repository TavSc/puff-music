Man_route = /usr/share/man/man1
Install_route = /usr/bin

install:
	echo "Installing Puff Music on $(Install_route)"
	sudo cp puff $(Install_route)
	sudo chmod +x $(Install_route)/puff
	sudo cp puff.1 $(Man_route)
	sudo gzip $(Man_route)/puff.1
	sudo mandb

uninstall: 
	sudo rm $(Install_route)/puff
	sudo rm $(Man_route)/puff.1.gz
	sudo mandb
	
