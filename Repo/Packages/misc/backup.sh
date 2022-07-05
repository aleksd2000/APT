#!/bin/bash

# TO DO LIST:
#	Add security support:
#				ACL - Who is allowed to use this script?
#				shc - compile the script to protect the code from being edited

#	Add support for portable devices:
#				2 x laptops
#				1 x phone

if [[ "$HOSTNAME" = "obsidian.aleksd2000.cc" ]] || [[ "$HOSTNAME" = "recovery.linuxutopia.com" ]]; then  

cleverecho="/usr/bin/echo -e -n"
hostname=`hostname`
option=$1
archivename=$2
file1=$3
file2=$4
file3=$5

# Repository Chooser Menu:

	$cleverecho "Please Choose Repository Location: \n";
	$cleverecho "\n";
	$cleverecho "\t1. /Servers/Storage1/Backup  - 100 GB Hetzner Storage\n";
	$cleverecho "\t2. /Servers/Storage2/Backup  - 1   TB Hetzner Storage\n";
	$cleverecho "\t3. /Servers/Storage3/BigBorg - 1   TB Wasabi  Storage\n";
	$cleverecho "\n";
	$cleverecho "\t4. /Servers/OpenDrive/Backup - 2   PB OpenDrive Storage\n";
	$cleverecho "\n";
	$cleverecho "Selection (Q to Cancel): ";
	read selection
		case $selection in
			1)	REPOSITORY=/Servers/Storage1/BorgBackup;;
			2)  REPOSITORY=/Servers/Storage2/Backup;;
			3)  REPOSITORY=/Servers/Storage3/BigBorg;;
			4)	REPOSITORY=/Servers/OpenDrive/Backup;;
		[Q|q])	exit 0;;
		esac
	
	#ps -ef | grep -i "borg" | grep -v grep | awk '{print $2}' > borg.pid
	#if [ -f borg.pid ]; then $cleverecho "Borg maybe running ... Please try later ...\n"; exit 0;fi

list_backups() {
	export BORG_PASSPHRASE='Helios009!!009Helios'
	borg $option $REPOSITORY
}

create_backup() {
	#Bail if borg is already running, maybe previous run didn't finish
	if pidof -x borg >/dev/null; then
    	echo "Backup already running"
        exit
	fi
	
	# Setting this, so you won't be asked for your repository passphrase:
	export BORG_PASSPHRASE='Helios009!!009Helios'
	# or this to ask an external program to supply the passphrase:
	export BORG_PASSCOMMAND='pass show backup'
	
	# Backup all of /home and /var/www except a few
	# excluded directories
	borg create -v --stats                          				\
	    $REPOSITORY::`hostname`-`date +%Y-%m-%d`-$archivename       \
	        $file1 $file2 $file3 $file4                				\
		    --exclude '/home/aleks/.cache'              			\
				    
			# Use the prune subcommand to maintain 7 daily, 4 weekly and 6 monthly
			# archives of THIS machine. The '{hostname}-' prefix is very important to
			# limit prune's operation to this machine's archives and not apply to
			# other machine's archives also.
	#			    borg prune -v --list $REPOSITORY --prefix `hostname`- \
	#				        --keep-daily=7 --keep-weekly=4 --keep-monthly=6
}

prune() {
		export BORG_PASSPHRASE='Helios009!!009Helios'
	    borg prune 	-v --list $REPOSITORY --prefix `hostname`- \
			        --keep-daily=7 --keep-weekly=4 --keep-monthly=6
}

help_screen() {
			$cleverecho "Help System: \n\n";
			$cleverecho "\t list 	- displays all backups stored on Backup Server\n\n";
			$cleverecho "\t create  - usage: create 'backupname' 'files to backup'\n";
			$cleverecho "\t delete  - usage: delete 'backupname'\n";
			$cleverecho "\t restore - usage: restore 'backupname'\n";
			$cleverecho "\n"
}

list_contents() {
	borg list $REPOSITORY | awk -F '[/ ]+' '// {print $1}' > /Servers/Storage2/Coding/archives.txt 
	# SETUP
	umask 000 # all files created by script are world rwx

	# VARIABLES
	OutFile=/Servers/Storage2/Coding/archives.txt     # Full path to output files
	declare -a OutArr     # array for storage

	# End of setup.
	# MAIN
	while IFS= read -r line || [[ "$line" ]];  do
  		OutArr+=("$line")
  		echo "$line"
	done < $OutFile

	clear
	$cleverecho "Archive Selection for Listing Contents: \n"
	$cleverecho "\n"

	if [ "${OutArr[0]}" != "" ]; 	then $cleverecho "\t1. $REPOSITORY::${OutArr[0]}\n"; fi
	if [ "${OutArr[1]}" != "" ]; 	then $cleverecho "\t2. $REPOSITORY::${OutArr[1]}\n"; fi
	if [ "${OutArr[2]}" != "" ]; 	then $cleverecho "\t3. $REPOSITORY::${OutArr[2]}\n"; fi
	if [ "${OutArr[3]}" != "" ]; 	then $cleverecho "\t4. $REPOSITORY::${OutArr[3]}\n"; fi
	if [ "${OutArr[4]}" != "" ]; 	then $cleverecho "\t5. $REPOSITORY::${OutArr[4]}\n"; fi
	if [ "${OutArr[5]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[5]}\n"; fi
	if [ "${OutArr[6]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[6]}\n"; fi
	if [ "${OutArr[7]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[7]}\n"; fi
	if [ "${OutArr[8]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[8]}\n"; fi
	if [ "${OutArr[9]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[9]}\n"; fi
	if [ "${OutArr[10]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[10]}\n"; fi
	if [ "${OutArr[11]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[11]}\n"; fi
	if [ "${OutArr[12]}" != "" ]; 	then $cleverecho "\t6. $REPOSITORY::${OutArr[12]}\n"; fi

	$cleverecho "\nPlease Select Archive: "
	read archive_to_list

	case $archive_to_list in
		1) 	list_archive=$REPOSITORY::${OutArr[0]};
			borg list $list_archive
			;;
		2)	list_archive=$REPOSITORY::${OutArr[1]};
			borg list $list_archive
			;;		
		3)	list_archive=$REPOSITORY::${OutArr[2]};
			borg list $list_archive
			;;
		4)  list_archive=$REPOSITORY::${OutArr[3]};
			borg list $list_archive
			;;
		5)	list_archive=$REPOSITORY::${OutArr[4]};
			borg list $list_archive
			;;
		6)	list_archive=$REPOSITORY::${OutArr[5]};
			borg list $list_archive
			;;
		7)	list_archive=$REPOSITORY::${OutArr[6]};
			borg list $list_archive
			;;
		8)	list_archive=$REPOSITORY::${OutArr[7]};
			borg list $list_archive
			;;
		9)	list_archive=$REPOSITORY::${OutArr[8]};
			borg list $list_archive
			;;
		10)	list_archive=$REPOSITORY::${OutArr[9]};
			borg list $list_archive
			;;
	esac	
	#echo "${OutArr[2]}"
	#echo "${OutArr[3]}"
	#echo "${OutArr[4]}"
	# END
	#exit 0

}

cleverecho="/usr/bin/echo -e -n"

# Command line options: 
	if [ "$option" = "help" ];					 then help_screen;		fi
	if [ "$option" = "prune" ];					 then prune;			fi
	if [ "$option" = "choose" ];				 then choose;			fi
	if [ "$option" = "create" ];				 then create_backup;	fi
	if [ "$option" = "list" ]; 					 then list_backups; 	fi

	if [[ "$1" = "list" && "$2" = "contents" ]]; then list_contents; 	fi

else
		$cleverecho "You are using an unsupported host.\n"

fi
