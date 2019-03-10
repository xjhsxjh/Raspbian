THIS_FILE := $(lastword $(MAKEFILE_LIST))


default: 
	@echo $@  # print target name	
	webserver
email: 
	@echo $@
	./emailInstall.sh
nas: 
	@echo $@
	./sambaInstall.sh
new: 
	@echo $@
	./newInstall.sh	
notrack: 
	@echo $@
	wget https://raw.githubusercontent.com/quidsup/notrack/master/install.sh | bash 
pihole: 
	@echo $@
	curl -sSL https://install.pi-hole.net | bash
proxy: 
	@echo $@
	./polipoInstall.sh
python: 
	@echo $@
	./pythonInstall.sh
squid: 
	@echo $@
	./squidInstall.sh
tor: 
	@echo $@
	sudo apt install tor
vpn: 
	@echo $@
	curl -L https://install.pivpn.io | bash
webserver: 
	@echo $@
	sudo apt-get install apache2 mysql-client apache2-dev libapache2-mod-php php php-mysql mysql-server apache2-utils libexpat1 ssl-cert libapache2-mod-wsgi



all:
	@echo $@  # print target name
	@$(MAKE) -f $(THIS_FILE) webserver pihole vpn tor notrack proxy nas python new

.PHONY: uninstall
uninstall:
	echo "still test"


.PHONY: clean
clean:
	echo "still test"
	rm -f all



