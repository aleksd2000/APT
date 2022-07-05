#/bin/bash

# Installs google-drive-ocamlfuse on Debian (Stretch & Buster)
#

list_drives() {
	# [[ -d /tmp/ ]] && echo it exists

	if [ -d "~/.dfuse/" ]; then ls -l ~/.gdfuse/ | awk -F '[/ ]+' '// {print $9}'; else ls -l /mnt/wsl/HOME_DIR/.gdfuse/ | awk -F '[/ ]+' '// {print $9}'; fi

}

drivemount() {
	echo -e -n "Please enter label: "; read label
	echo -e -n "Please enter Mountpoint: "; read mountpoint

	google-drive-ocamlfuse -label $label $mountpoint
}

install() {
	sudo apt install -y software-properties-common dirmngr
 
	echo deb     http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu xenial main >> /etc/apt/sources.list.d/alessandro-strada-ubuntu-ppa-bionic.list
	echo deb-src http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu xenial main >> /etc/apt/sources.list.d/alessandro-strada-ubuntu-ppa-bionic.list

	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AD5F235DF639B041
	sudo apt-get update
	sudo apt-get install -y google-drive-ocamlfuse
}

headless() {
	echo -e -n "Please enter a label for your GoogleDrive: "
	read label

	# When your ready to connect it:

	echo $'#!/bin/sh\necho $* > /dev/stderr' > xdg-open
	chmod 755 xdg-open
	env PATH=`pwd`:$PATH google-drive-ocamlfuse -label $label
}

nothing() {
	echo -e -n "Command line options: \n";
	echo -e -n "\n";
	echo -e -n "\t install (installs all needed PPA's and Programs)\n";
	echo -e -n "\t headless (connects you to google for authorisation)\n";
	echo -e -n "\t list (lists all available GoogleDrives  all needed PPA's and Programs)\n";
	echo -e -n "\t mount (connects you to google for authorisation)\n";

	echo -e -n "\n"
}

# Command line options:	
	if [ "$1" = "install" ]; 	then install; fi
	if [ "$1" = "headless" ]; 	then headless; fi
	if [ "$1" = "mount" ]; 		then drivemount; fi
	if [ "$1" = "list" ];	 	then list_drives; fi
	if [ "$1" = "" ]; 			then nothing; fi
