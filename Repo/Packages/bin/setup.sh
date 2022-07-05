#!/bin/bash

# Setting CWD Directory
    if [ "$HOSTNAME" = "DESKTOP-6413AM3" ]; then CWD="$HOME/GIT:Repos/Complete/testing-aleks"; fi
    if [ "$HOSTNAME" = "obsidian.aleksd2000.cc" ]; then CWD="$HOME/Remote/Github/Complete/testing-aleks"; fi

# Predefined Variables
    scriptname="Custom Setup Utility"
    #source $CWD/files/data/configuration.ini

    cleverecho="/bin/echo -e -n"
    pending="$cleverecho \n\t Pending ... Come back soon!\n\n"
    wait="sleep 3"

# TO DO List / Bug Tracker:
    # Need to add security precautions to this file
    # Need to add hostname checking as some hostnames don't allow for modifications to base setup   -- started
    # Add Install Method to install-custom                                                          -- started
    # Move all global variables into config file which is sourced at start up                       -- completed 16/01/2022 (I think ...)
    # Create a setup module that can add a dependencies/dep*.mod files		                        -- pending
    # Create a module that can edit a dependencies/dep*.mod file (edit_module)                      -- pending save function to complete! 
        # *** Complete Save function *** !!!                                                        -- as of 29/01/2022
    # Create a module that cen delete a dependencies/dep*.mod file                                  -- might be easier ...
    # Create a module that deals with custom PPA's                                                  -- pending (not startedd yet)
    # Create a configuration option (--configure hosts)
        # This will setup a $HOSTNAME.ini and corresponding folders for a new host                  -- pending
    # Finish about subsection                                                                       -- pending 

    # Look into if each of the command line options could be a module which is sourced instead of having all the code
    #   in one file??

    # Bugs
        # For some reason the variables such as $1 $2 $3 $4 $5 don't carry over from the initial call to the other modules...
        #   \ - Need to find a fix ...

pending() {

    $cleverecho "\n\t Pending ... Come back soon!\n\n"
    sleep 3

}

install_toggle() { # $1 is $depX $2 is $depXstate $3 is $depXmethod
    # Install/unistall toggle - 20220111

    #echo "$3"
    #exit 1 # BREAKPOINT
    if [ "$3" = "apt" ]        # catch apt installs first
      then
        if [ "$2" = "Installed" ]
          then
            echo "$1 is installed - Enter U to unistall or [Return] to cancel."
            read response
            if [[ $response = "U" || $response = "u" ]]
              then
                sudo apt-get purge -y "$1" &> /dev/null
                echo "$1 has been uninstalled - [Return] for menu"
                read
            fi
          else
            echo "$1 is not installed - Enter I to install or [Return] to cancel."
            read response
            if [[ $response = "I" || $response = "i" ]]
              then
                sudo apt-get install -y "$1"  &> /dev/null
                echo "$1 has been installed - [Return] for menu"
                read
            fi
        fi
    fi
    # will only reach here for non apt installs
    if [ "$3" = "curl" ]        # then move on to curl installs
      then
        if [ "$2" = "Installed" ]
          then
            $cleverecho "$1 is installed - Enter U to unistall or [Return] to cancel."
            read response
            if [[ $response = "U" || $response = "u" ]]
              then
                $cleverecho "This needs to be removed manually!"; read
            fi
          else
            echo "$1 is not installed - Enter I to install or [Return] to cancel."
            read response
            if [[ $response = "I" || $response = "i" ]]
              then
                echo ${depsource[$menu_opt]}
                echo "$1 has been installed - [Return] for menu"
                read
            fi
        fi
    fi
  
}

about() {
    $cleverecho "About $0\n"
    $pending; $wait;
}

dependencies_check() {

    # Dependency Checking

        if [ "$dep1" != "" ];  then dpkg-query --show  "$dep1"; fi
        if [ "$dep2" != "" ];  then dpkg-query --show  "$dep2"; fi
        if [ "$dep3" != "" ];  then dpkg-query --show  "$dep3"; fi
        if [ "$dep4" != "" ];  then dpkg-query --show  "$dep4"; fi
        if [ "$dep5" != "" ];  then dpkg-query --show  "$dep5"; fi
        if [ "$dep6" != "" ];  then dpkg-query --show  "$dep6"; fi
        if [ "$dep7" != "" ];  then dpkg-query --show  "$dep7"; fi
        if [ "$dep8" != "" ];  then dpkg-query --show  "$dep8"; fi
        if [ "$dep9" != "" ];  then dpkg-query --show  "$dep9"; fi
        if [ "$dep10" != "" ]; then dpkg-query --show  "$dep10"; fi

        exit 0;
}

dependencies_install() {

    # Dependency Checking

        if [ "$dep1" != "" ];  then dpkg-query --show  "$dep1"; fi
        if [ "$dep2" != "" ];  then dpkg-query --show  "$dep2"; fi
        if [ "$dep3" != "" ];  then dpkg-query --show  "$dep3"; fi
        if [ "$dep4" != "" ];  then dpkg-query --show  "$dep4"; fi
        if [ "$dep5" != "" ];  then dpkg-query --show  "$dep5"; fi
        if [ "$dep6" != "" ];  then dpkg-query --show  "$dep6"; fi
        if [ "$dep7" != "" ];  then dpkg-query --show  "$dep7"; fi
        if [ "$dep8" != "" ];  then dpkg-query --show  "$dep8"; fi
        if [ "$dep9" != "" ];  then dpkg-query --show  "$dep9"; fi
        if [ "$dep10" != "" ]; then dpkg-query --show  "$dep10"; fi


        if [ "$dep1" != "" ]; then
        $cleverecho "\nChecking for $dep1\n"

        dpkg-query --show  "$dep1"
            if [ "$?" = "0" ];
                then
                    $cleverecho "$dep1 found\n"
                else
                    $cleverecho "$dep1" not found. Please approve installation.
                    sudo apt-get install -y "$dep1"
                if [ "$?" = "0" ];
                    then
                    $cleverecho "$dep1 installed successfully.\n"
                fi
            fi
            else
                $cleverecho "Dependency #1 - Empty!\n"
            fi

        if [ "$dep2" != "" ]; then
        $cleverecho "\nChecking for $dep2\n"

        dpkg-query --show  "$dep2"
            if [ "$?" = "0" ];
                then
                    $cleverecho "$dep2 found\n"
                else
                    $cleverecho "$dep2" not found. Please approve installation.
                    sudo apt-get install -y "$dep2"
                if [ "$?" = "0" ];
                    then
                        $cleverecho "$dep2 installed successfully.\n"
                fi
            fi
                else
                $cleverecho "Dependency #2 - Empty!\n"
            fi

    if [ "$dep3" != "" ]; then
    $cleverecho "\nChecking for $dep3\n"

    dpkg-query --show  "$dep3"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep3 found\n"
            else
                $cleverecho "$dep3 not found. Please approve installation.\n"
                $cleverecho "Use curl instead of apt-get?: "
                 read curlyesorno
                 case $curlyesorno
                    in
                        yes) curl -fsSL https://code-server.dev/install.sh | bash -s --
                             ;;
                        no) sudo apt-get install "$dep3"
                             ;;
                esac
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep3 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependency #3 - Empty!\n"
    fi

    if [ "$dep4" != "" ]; then
    $cleverecho "\nChecking for $dep4\n"

    dpkg-query --show  "$dep4"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep4 found\n"
            else
                $cleverecho "$dep4 not found. Please approve installation.\n"
                sudo apt-get install -y "$dep4"
                $cleverecho "$dep4 installed successfully.\n";sleep 5
               
               if [ "$?" = "0" ]; then


                $cleverecho "Configuring $dep4 ... ";sleep 5; $cleverecho " ... "; sleep 5; $cleverecho "Ctrl - c to cancel (last chance) ... \n";sleep 5;

                    if [ -f  "/etc/fail2ban/jail.local" ]; then
                            sudo rm /etc/fail2ban/jail.local
                            sudo touch /etc/fail2ban/jail.local
                        else
                            sudo rm /etc/fail2ban/jail.local
                            sudo touch /etc/fail2ban/jail.local
                    fi

                $cleverecho "# Default banning action (e.g. iptables, iptables-new,\n"      >> files/data/jail.local;
                $cleverecho "# iptables-multiport, shorewall, etc) It is used to define"    >> files/data/jail.local;
                $cleverecho "# action_* variables. Can be overridden globally or per"       >> files/data/jail.local;
                $cleverecho "# section within jail.local file\n"                            >> files/data/jail.local;
                $cleverecho "\n"                                                            >> files/data/jail.local;

                $cleverecho "#banaction = ufw\n"                                            >> files/data/jail.local;
                $cleverecho "#banaction_allports = ufw\n"                                   >> files/data/jail.local;
                $cleverecho "\n"                                                            >> files/data/jail.local;

                $cleverecho "[ssh]\n"                                                       >> files/data/jail.local;
                $cleverecho "enabled  = true\n"                                             >> files/data/jail.local;
                $cleverecho "port     = ssh\n"                                              >> files/data/jail.local;
                $cleverecho "filter   = sshd\n"                                             >> files/data/jail.local;
                $cleverecho "logpath  = /var/log/auth.log\n"                                >> files/data/jail.local;
                $cleverecho "maxretry = 1\n"                                                >> files/data/jail.local;
                $cleverecho "findtime = 1d\n"                                               >> files/data/jail.local;
                $cleverecho "bantime  = 1y\n"                                               >> files/data/jail.local;
                $cleverecho "\n"                                                            >> files/data/jail.local;

                $cleverecho "[sshd]\n"                                                      >> files/data/jail.local;
                $cleverecho "enabled = true\n"                                              >> files/data/jail.local;
                $cleverecho "maxretry = 1\n"                                                >> files/data/jail.local;
                $cleverecho "findtime = 1d\n"                                               >> files/data/jail.local;
                $cleverecho "bantime  = 1y\n"                                               >> files/data/jail.local;
                $cleverecho "\n"                                                            >> files/data/jail.local;

                sudo cp files/data/jail.local /etc/fail2ban/jail.local
                rm files/data/jail.local
                sudo systemctl restart fail2ban
        fi
    fi
 else
    $cleverecho "Dependency #4 - Empty!\n"
    fi

    if [ "$dep5" != "" ]; then
    $cleverecho "\nChecking for $dep5\n"

    dpkg-query --show  "$dep5"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep5 found\n"
            else
                $cleverecho "$dep5" not found. Please approve installation.
                sudo apt-get install -y "$dep5"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep5 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependency #5 - Empty!\n"
    fi

    if [ "$dep6" != "" ]; then
    $cleverecho "\nChecking for $dep6\n\n"

    dpkg-query --show  "$dep6"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep6 found\n"
            else
                $cleverecho "$dep16 not found. Installing now... \n"
				# Installing Github gh:
				curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
				echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
                git update
				git install -y gh
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep6 installed successfully.\n"
				$cleverecho "Configuring Please wait ... "; sleep 5; $cleverecho "... \n";
				gh --version; sleep 5;
				gh auth login
        fi
    fi
 else
    $cleverecho "Dependency #6 - Empty!\n"
    fi

    if [ "$dep7" != "" ]; then
    $cleverecho "\nChecking for $dep7\n"

     dpkg-query --show  "$dep7"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep7 found\n"
            else
                sudo apt update
                sudo apt install rclone
        if [ "$?" = "0" ];
            then
                rcloneconfig="files/data/rclone.conf";
                $cleverecho "Configuring $dep7 ... ";sleep 5; $cleverecho " ... "; sleep 5; $cleverecho "Ctrl - c to cancel (last chance) ... \n"; sleep 5;
                touch $rcloneconfig
                # Configuring Rclone:
                echo -e -n "# Encrypted rclone configuration File Created by $0\n" >> $rcloneconfig;
                echo -e -n "\n"    >> $rcloneconfig;
                echo -e -n "RCLONE_ENCRYPT_V0:\n" >> $rcloneconfig;
		        echo -e -n "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" >> $rcloneconfig;

                $cleverecho "$dep7 installed successfully.\n"
                if [ -d "~/.config/rclone/" ]; then
                        mkdir ~/.config/rclone
                    else
                        $cleverecho "Removing previous rclone directories ...\n"
                        rm -rf ~/.config/rclone/
                        $cleverecho "Recreating rclone directories ...\n"
                        mkdir ~/.config/rclone
                fi
                cp files/data/rclone.conf ~/.config/rclone/rclone.conf
                rm files/data/rclone.conf

        fi
    fi



    fi

    if [ "$dep8" != "" ]; then
    $cleverecho "\nChecking for $dep8\n"

    dpkg-query --show  "$dep8"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep8 found\n"
            else
                $cleverecho "$dep8" not found. Please approve installation.
                # Installing Java:
                echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu focal main" | tee /etc/apt/sources.list.d/linuxuprising-java.list
                apt install gnupg -y
                apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
                sudo apt update
                sudo apt install oracle-java17-installer --install-recommends
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep8 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependency #8 - Empty!\n"

    fi
}

git_repos() {
	$pending
}

git_repos_install() {
	$pending
}

help_system() {
    $cleverecho "Command Line Arguments:\n\n";
    $cleverecho "--help (this help menu)\n";
    $cleverecho "--list (List programs for install)\n";
    $cleverecho "--about\n";
    $cleverecho "\n";
    $cleverecho "--menu (menu)\n";
}

module_management() {
	dpe_count=2
	while [ "$selection" != "q" ]; do
	clear
		$pending
		$cleverecho "Installable Programs:\n\n"
        printf "%11s  %-30s %-15s %-15s %-15s \n\n" "Option" "Package" "Status" "Install Method" "Install Source"
        for (( xx=0 ; xx<$dep_count ; xx++ )); do
          if [ "$dep[$xx]" != "" ];    then depstate[$xx]="Installed"; dpkg-query -s "${dep[$xx]}"   &> /dev/null || depstate[$xx]="Not Installed"; printf "%11s. %-30s %-15s %-15s %-15s \n" "$((xx+1))" "${dep[$xx]}" "${depstate[$xx]}" "${depmethod[$xx]}" "${depsource[$xx]}"; fi;
        done

		$cleverecho "\n";
		$cleverecho "Enter Selection [1-$dep_count or q to exit]: "
		read selection
		if [ "$selection" = "q" ]; then exit 0; fi
			case $selection in
				1)  if [ "${depstate[0]}" = "Installed" ]; then echo "It's installed"; module-management; selection=""; read; fi; if [ "${dep[0]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[0]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[0]}" = "apt" ];  then echo "${depfilename[0]}";  echo "${depmethod[0]}  ${depsource[0]}"; read; fi;  if [ "${depmethod[0]}" = "curl" ];  then echo "${depfilename[0]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				2)  if [ "${dep[1]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[1]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[1]}" = "apt" ];  then echo "${depfilename[1]}";  echo "${depmethod[1]}  ${depsource[1]}"; read; fi;  if [ "${depmethod[1]}" = "curl" ];  then echo "${depfilename[1]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				3)  if [ "${dep[2]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[2]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[2]}" = "apt" ];  then echo "${depfilename[2]}";  echo "${depmethod[2]}  ${depsource[2]}"; read; fi;  if [ "${depmethod[2]}" = "curl" ];  then echo "${depfilename[2]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				4)  if [ "${dep[3]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[3]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[3]}" = "apt" ];  then echo "${depfilename[3]}";  echo "${depmethod[3]}  ${depsource[3]}"; read; fi;  if [ "${depmethod[3]}" = "curl" ];  then echo "${depfilename[3]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				5)  if [ "${dep[4]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[4]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[4]}" = "apt" ];  then echo "${depfilename[4]}";  echo "${depmethod[4]}  ${depsource[4]}"; read; fi;  if [ "${depmethod[4]}" = "curl" ];  then echo "${depfilename[4]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				6)  if [ "${dep[5]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[5]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[5]}" = "apt" ];  then echo "${depfilename[5]}";  echo "${depmethod[5]}  ${depsource[5]}"; read; fi;  if [ "${depmethod[5]}" = "curl" ];  then echo "${depfilename[5]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				7)  if [ "${dep[6]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[6]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[6]}" = "apt" ];  then echo "${depfilename[6]}";  echo "${depmethod[6]}  ${depsource[6]}"; read; fi;  if [ "${depmethod[6]}" = "curl" ];  then echo "${depfilename[6]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				8)  if [ "${dep[7]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[7]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[7]}" = "apt" ];  then echo "${depfilename[7]}";  echo "${depmethod[7]}  ${depsource[7]}"; read; fi;  if [ "${depmethod[7]}" = "curl" ];  then echo "${depfilename[7]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				9)  if [ "${dep[8]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[8]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[8]}" = "apt" ];  then echo "${depfilename[8]}";  echo "${depmethod[8]}  ${depsource[8]}"; read; fi;  if [ "${depmethod[8]}" = "curl" ];  then echo "${depfilename[8]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				10) if [ "${dep[9]}" != "" ];  then $cleverecho "Depenendency Name: ${dep[9]}\n";  $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[9]}" = "apt" ];  then echo "${depfilename[9]}";  echo "${depmethod[9]}  ${depsource[9]}"; read; fi;  if [ "${depmethod[9]}" = "curl" ];  then echo "${depfilename[9]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				11) if [ "${dep[10]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[10]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[10]}" = "apt" ]; then echo "${depfilename[10]}"; echo "${depmethod[10]} ${depsource[10]}"; read; fi; if [ "${depmethod[10]}" = "curl" ]; then echo "${depfilename[10]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				12) if [ "${dep[11]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[11]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[11]}" = "apt" ]; then echo "${depfilename[11]}"; echo "${depmethod[11]} ${depsource[11]}"; read; fi; if [ "${depmethod[11]}" = "curl" ]; then echo "${depfilename[11]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				13) if [ "${dep[12]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[12]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[12]}" = "apt" ]; then echo "${depfilename[12]}"; echo "${depmethod[12]} ${depsource[12]}"; read; fi; if [ "${depmethod[12]}" = "curl" ]; then echo "${depfilename[12]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				14) if [ "${dep[13]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[13]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[13]}" = "apt" ]; then echo "${depfilename[13]}"; echo "${depmethod[13]} ${depsource[13]}"; read; fi; if [ "${depmethod[13]}" = "curl" ]; then echo "${depfilename[13]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				15) if [ "${dep[14]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[14]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[14]}" = "apt" ]; then echo "${depfilename[14]}"; echo "${depmethod[14]} ${depsource[14]}"; read; fi; if [ "${depmethod[14]}" = "curl" ]; then echo "${depfilename[14]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				16) if [ "${dep[15]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[15]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[15]}" = "apt" ]; then echo "${depfilename[15]}"; echo "${depmethod[15]} ${depsource[15]}"; read; fi; if [ "${depmethod[15]}" = "curl" ]; then echo "${depfilename[15]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				17) if [ "${dep[16]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[16]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[16]}" = "apt" ]; then echo "${depfilename[16]}"; echo "${depmethod[16]} ${depsource[16]}"; read; fi; if [ "${depmethod[16]}" = "curl" ]; then echo "${depfilename[16]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				18) if [ "${dep[17]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[17]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[17]}" = "apt" ]; then echo "${depfilename[17]}"; echo "${depmethod[17]} ${depsource[17]}"; read; fi; if [ "${depmethod[17]}" = "curl" ]; then echo "${depfilename[17]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				19) if [ "${dep[18]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[18]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[18]}" = "apt" ]; then echo "${depfilename[18]}"; echo "${depmethod[18]} ${depsource[18]}"; read; fi; if [ "${depmethod[18]}" = "curl" ]; then echo "${depfilename[18]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				20) if [ "${dep[19]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[19]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[19]}" = "apt" ]; then echo "${depfilename[19]}"; echo "${depmethod[19]} ${depsource[19]}"; read; fi; if [ "${depmethod[19]}" = "curl" ]; then echo "${depfilename[19]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				21) if [ "${dep[20]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[20]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[20]}" = "apt" ]; then echo "${depfilename[20]}"; echo "${depmethod[20]} ${depsource[20]}"; read; fi; if [ "${depmethod[20]}" = "curl" ]; then echo "${depfilename[20]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				22) if [ "${dep[21]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[21]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[22]}" = "apt" ]; then echo "${depfilename[21]}"; echo "${depmethod[21]} ${depsource[21]}"; read; fi; if [ "${depmethod[21]}" = "curl" ]; then echo "${depfilename[21]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				23) if [ "${dep[22]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[22]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[22]}" = "apt" ]; then echo "${depfilename[22]}"; echo "${depmethod[22]} ${depsource[22]}"; read; fi; if [ "${depmethod[22]}" = "curl" ]; then echo "${depfilename[22]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				24) if [ "${dep[23]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[23]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[23]}" = "apt" ]; then echo "${depfilename[23]}"; echo "${depmethod[23]} ${depsource[23]}"; read; fi; if [ "${depmethod[23]}" = "curl" ]; then echo "${depfilename[23]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				25) if [ "${dep[24]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[24]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[24]}" = "apt" ]; then echo "${depfilename[24]}"; echo "${depmethod[24]} ${depsource[24]}"; read; fi; if [ "${depmethod[24]}" = "curl" ]; then echo "${depfilename[24]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				26) if [ "${dep[25]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[25]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[25]}" = "apt" ]; then echo "${depfilename[25]}"; echo "${depmethod[25]} ${depsource[25]}"; read; fi; if [ "${depmethod[25]}" = "curl" ]; then echo "${depfilename[25]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				27) if [ "${dep[26]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[26]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[26]}" = "apt" ]; then echo "${depfilename[26]}"; echo "${depmethod[26]} ${depsource[26]}"; read; fi; if [ "${depmethod[26]}" = "curl" ]; then echo "${depfilename[26]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				28) if [ "${dep[27]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[27]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[27]}" = "apt" ]; then echo "${depfilename[27]}"; echo "${depmethod[27]} ${depsource[27]}"; read; fi; if [ "${depmethod[27]}" = "curl" ]; then echo "${depfilename[27]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				29) if [ "${dep[28]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[28]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[28]}" = "apt" ]; then echo "${depfilename[28]}"; echo "${depmethod[28]} ${depsource[28]}"; read; fi; if [ "${depmethod[28]}" = "curl" ]; then echo "${depfilename[28]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;
				30) if [ "${dep[29]}" != "" ]; then $cleverecho "Depenendency Name: ${dep[29]}\n"; $cleverecho "Do you wish to install this?: "; read subselection; case $subselection in Yes|yes|Y|y) if [ "${depmethod[29]}" = "apt" ]; then echo "${depfilename[29]}"; echo "${depmethod[29]} ${depsource[29]}"; read; fi; if [ "${depmethod[29]}" = "curl" ]; then echo "${depfilename[29]} not supported yet"; read; fi;; No|no|N|n)   echo "ok no worries"; read;; esac; fi;;        esac
    done
}

list() {
    source $CWD/files/data/configuration.ini

    clear
    $cleverecho "Dependencies List:\n\n"
    $cleverecho "                                   \n"
        printf "%11s  %-25s %-15s %-15s %-17s %-10s\n\n" "Option" "Package" "Status" "Install Method" "Install Source" "File Name"
        for (( xx=0 ; xx<$dep_count ; xx++ )); do
          if [ "$dep[$xx]" != "" ];    then depstate[$xx]="Installed"; dpkg-query -s "${dep[$xx]}"   &> /dev/null || depstate[$xx]="Not Installed"; printf "%11s. %-25s %-15s %-15s %-17s %-10s\n" "$((xx+1))" "${dep[$xx]}" "${depstate[$xx]}" "${depmethod[$xx]}" "${depsource[$xx]}" "${depfilename[$xx]}" ; fi;
        done
    $cleverecho "\n\t* = Additional PPA's maybe required!\n\n";
}

install-custom() {
    source $CWD/files/data/configuration.ini

	while [ "$selection" != "q" ]; do
	clear

		$pending
		$cleverecho "Installable Programs:\n\n"
        printf "%11s  %-30s %-15s %-15s %-15s \n\n" "Option" "Package" "Status" "Install Method" "Install Source"
        for (( xx=0 ; xx<$dep_count ; xx++ )); do
          if [ "$dep[$xx]" != "" ];    then depstate[$xx]="Installed"; dpkg-query -s "${dep[$xx]}"   &> /dev/null || depstate[$xx]="Not Installed"; printf "%11s. %-30s %-15s %-15s %-15s \n" "$((xx+1))" "${dep[$xx]}" "${depstate[$xx]}" "${depmethod[$xx]}" "${depsource[$xx]}"; fi;
        done

		$cleverecho "\n";
		$cleverecho "\n\t* = Additional PPA's maybe required!\n\n"
        $cleverecho "Enter Selection [1-$dep_count or q to exit]: "

		read selection
		if [ "$selection" = "q" ]
          then 
            exit 0  # "q" entered
        fi
        opt_no="${selection//[!0-9]/}"  # Strip out digits
        #echo "$opt_no"
        if [ "$opt_no" = "" ]           # no digits in string
          then
            $cleverecho "No valid option selected - [RETURN] to continue"  # this test is working - 20220128
            read
            continue
        fi
        if [ "$opt_no" -gt "$dep_count" ] || [ "$opt_no" -lt "1" ]
          then
            $cleverecho "Not an option number in the list - [RETURN] to continue"
            read
            continue
        fi

        # Process menu selection - Should only reach here if a number from the menu has been input.
        menu_opt=$((opt_no-1))
        clear
        #echo "You picked option no. $opt_no which is array slot $menu_opt"
        #read
        install_toggle "${dep[$menu_opt]}" "${depstate[$menu_opt]}" "${depmethod[$menu_opt]}"
    #   install_toggle "${dep[0]}" "${depstate[0]}"
 	done
}

configure() {
	source $CWD/files/data/configuration.ini
    $cleverecho "Configuration Utility:\n\n"
    $cleverecho "Available Systems to Configure:\n"

    write(){
        echo -e -n "Writing File [$newmodfile] (Press Enter for Default): "
        read newselection
        if [ "$newselection" = "" ]; then         
              echo -e -n "\n" > $newmodfile
            echo -e -n "# Module Configuration File     \n" >> $newmodfile
            echo -e -n "                                \n" >> $newmodfile
            echo -e -n "# Module Name: $new_package     \n" >> $newmodfile                                                                 
            echo -e -n "                                \n" >> $newmodfile
            echo -e -n "dep+=("$new_package")           \n" >> $newmodfile                                                                   
            echo -e -n "depmethod+=("$install_method")  \n" >> $newmodfile                                                          
            echo -e -n "depsource+=("$package_source")  \n" >> $newmodfile                                                         
            echo -e -n "                                \n" >> $newmodfile                    
        else
              newmodfile=$modfiledir/$newselection
              echo -e -n "\n" > $newmodfile
              echo -e -n "# Module Configuration File     \n" >> $newmodfile
              echo -e -n "                                \n" >> $newmodfile
              echo -e -n "# Module Name: $new_package     \n" >> $newmodfile                                                                 
              echo -e -n "                                \n" >> $newmodfile
              echo -e -n "dep+=("$new_package")           \n" >> $newmodfile                                                                   
              echo -e -n "depmethod+=("$install_method")  \n" >> $newmodfile                                                          
              echo -e -n "depsource+=("$package_source")  \n" >> $newmodfile                                                         
              echo -e -n "                                \n" >> $newmodfile                    
          fi
    }

	    if [ "$networkingmodule" = "true" ]; then $cleverecho "networking\n"; fi
          $pending; echo "Module Count: $dep_count"
          let "newdep_count=$dep_count+1"
          echo "New Module Count: $newdep_count"
              read
          while [ "$moduleselection" != "Q|q" ]; do
          newmodfile="files/data/dependencies/hosts/$HOSTNAME/dep$newdep_count.mod"
          modfiledir="files/data/dependencies/hosts/$HOSTNAME"

          echo -e -n "\tP) Package Name: $new_package             \n";
          echo -e -n "\tI) Installation Method: $install_method   \n";
          echo -e -n "\tPS) Package Source: $package_source       \n";
          echo -e -n "                                            \n";
          echo -e -n "New Mod File: $newmodfile\n"
          echo -e -n "Selection P, I, PS (M = Modify, W = Write, Q = Quit): ";
          read moduleselection

          case $moduleselection in
              P|p) echo -e -n "Enter package name: "; read new_package;;
              I|i) echo -e -n "Enter Installation Method: "; read install_method;;
              PS|ps) echo -e -n "Enter Package Source: "; read package_source;; 
              M|m) $pending; sleep 3;;
              W|w) write;;
              Q|q) return 0;;
          esac
      done

}

configure-setup() {
    $cleverecho "$scriptname:\n\n"
    $cleverecho "Setup Menu:\n"
    $cleverecho "\t \n"
    $cleverecho "\t 1. Create New Host\n"
    $cleverecho "\t 2. Remove Host Directory\n"
    $cleverecho "\t \n\n"
    $cleverecho "\n"
    $cleverecho "Selection (Q to cancel): "; read selection

        case $selection in
            1)  cp -Rv files/data/dependencies/hosts/template/* files/data/dependencies/hosts/$HOSTNAME;
                ;;
        [Q|q])  return 0;
                ;;
        esac
}

configure-hosts() {
    $cleverecho "\nHosts Configuration Utility: \n";
    $cleverecho "\n";
    $cleverecho "\t L - List Supported Hosts \n";
    $cleverecho "\t \n";
    $cleverecho "\t A - Add New Host\n";
    $cleverecho "\t \n";
    $cleverecho "\t D - Delete Host\n";
    $cleverecho "\t \n";
    $cleverecho "Selection: ";
    read selection

    case $selection in
        L|l) pending;;
        A|a) pending;;
    esac
    exit 0;
}

add_module(){
    source $CWD/files/data/configuration.ini
    $cleverecho "Add Module Menu:\n\n"

    write(){
        echo -e -n "Writing File [$newmodfile] (Press Enter for Default): "
        read newselection
        if [ "$newselection" = "" ]; then         
            echo -e -n "\n" > $newmodfile
            echo -e -n "# Module Configuration File     \n" >> $newmodfile
            echo -e -n "                                \n" >> $newmodfile
            echo -e -n "# Module Name: $new_package     \n" >> $newmodfile                                                                 
            echo -e -n "                                \n" >> $newmodfile
            echo -e -n "dep+=(\"$new_package\")           \n" >> $newmodfile                                                                   
            echo -e -n "depmethod+=(\"$install_method\")  \n" >> $newmodfile                                                          
            echo -e -n "depsource+=(\"$package_source\")  \n" >> $newmodfile                                                         
            echo -e -n "depfilename+=(\"$newmodfile\")    \n" >> $newmodfile
            echo -e -n "                                \n" >> $newmodfile                    
        else
              newmodfile=$modfiledir/$newselection
              echo -e -n "\n" > $newmodfile
              echo -e -n "# Module Configuration File     \n" >> $newmodfile
              echo -e -n "                                \n" >> $newmodfile
              echo -e -n "# Module Name: $new_package     \n" >> $newmodfile                                                                 
              echo -e -n "                                \n" >> $newmodfile
              echo -e -n "dep+=(\"$new_package\")           \n" >> $newmodfile                                                                   
              echo -e -n "depmethod+=(\"$install_method\")  \n" >> $newmodfile                                                          
              echo -e -n "depsource+=(\"$package_source\")  \n" >> $newmodfile                                                         
              echo -e -n "depfilename+=(\"$newmodfile\")    \n" >> $newmodfile
              echo -e -n "                                \n" >> $newmodfile                    
          fi
    }
          $pending; echo "Module Count: $dep_count"
            let "newdep_count=$dep_count+1"
            echo "New Module Count: $newdep_count"
            read
          while [ "$moduleselection" != "Q|q" ]; do
          newmodfile="files/data/dependencies/hosts/$HOSTNAME/dep$newdep_count.mod"
          modfiledir="files/data/dependencies/hosts/$HOSTNAME"

          echo -e -n "\tP) Package Name: $new_package             \n";
          echo -e -n "\tI) Installation Method: $install_method   \n";
          echo -e -n "\tPS) Package Source: $package_source       \n";
          echo -e -n "                                            \n";
          echo -e -n "New Mod File: $newmodfile\n"
          echo -e -n "Selection P, I, PS (M = Modify, W = Write, Q = Quit): ";
          read moduleselection

          case $moduleselection in
              P|p) echo -e -n "Enter package name: "; read new_package;;
              I|i) echo -e -n "Enter Installation Method: "; read install_method;;
              PS|ps) echo -e -n "Enter Package Source: "; read package_source;; 
              M|m) $pending; sleep 3;;
              W|w) write;;
              Q|q) return 0;;
          esac
      done
}

edit_module() {
    write() {
        if [ "$new_depfilename" != "" ]; then newmodfile=$new_depfilename; fi
        echo -e -n "Writing File [${depfilename[$xx]}] (Press Enter for Default): "
        read newselection
        if [ "$newselection" = "" ]; then
               if [ "$new_depfilename" =  "" ]; then $cleverecho ""# Module Configuration File     \n"\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho ""# Module Configuration File     \n"\n"; fi

               if [ "$new_depsource"   =   "" ]; then $cleverecho "Package: ${dep[$xx]}\n"; fi
               if [ "$new_depsource"       !=  "" ]; then $cleverecho "Package: $new_name\n"; fi

               if [ "$new_depfilename" =  "" ]; then $cleverecho "dep+=(\"$new_package\")\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho "dep+=(\"$new_package\")\n"; fi

               if [ "$new_depmethod"  =   "" ]; then $cleverecho "Install Method: ${depmethod[$xx]}\n"; fi
               if [ "$new_depmethod" !=   "" ]; then $cleverecho "Install Method: $new_depmethod\n"; fi                         

               if [ "$new_depfilename" =  "" ]; then $cleverecho "depmethod+=(\"$install_method\")\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho "depmethod+=(\"$install_method\")\n"; fi

               if [ "$new_depsource"  =   "" ]; then $cleverecho "Install Source: ${depsource[$xx]}\n"; fi
               if [ "$new_depsource" !=   "" ]; then $cleverecho "Install Source: $new_depsource\n"; fi

               if [ "$new_depfilename" =  "" ]; then $cleverecho "depsource+=(\"$package_source\")\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho "depsource+=(\"$package_source\")\n"; fi

               if [ "$new_depfilename" =  "" ]; then $cleverecho "\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho "\n"; fi

               if [ "$new_depsource"  =   "" ]; then $cleverecho "File Name: ${depfilename[$xx]}\n"; fi
               if [ "$new_depsource" !=   "" ]; then $cleverecho "File Name: $newwmodfile\n"; fi

               if [ "$new_depfilename" =  "" ]; then $cleverecho "depfilename+=(\"$newmodfile\")\n"; fi
               if [ "$new_depfilename" != "" ]; then $cleverecho "depfilename+=(\"$newmodfile\")\n"; fi

            read
        else
              read
          fi
    }
    $pending;sleep 1;
        printf "%11s  %-25s %-15s %-15s %-17s %-10s\n\n" "Option" "Package" "File Name"
        for (( xx=0 ; xx<$dep_count ; xx++ )); do
          if [ "$dep[$xx]" != "" ];    then depstate[$xx]="Installed"; dpkg-query -s "${dep[$xx]}"   &> /dev/null || depstate[$xx]="Not Installed"; printf "%11s. %-25s %-15s %-15s %-17s %-10s\n" "$((xx+1))" "${dep[$xx]}" "${depfilename[$xx]}"; fi;
        done

    $cleverecho "\nPlease Enter File name: "
    read selection; if [ "$selection" = "" ]; then return 0; fi
    case $selection in

        *)  source $selection; $cleverecho "\n\tModule Name: ${dep[$xx]} Loaded!\n";  
            $cleverecho "\nE) Edit, D) Delete, Q) Quit - Selection: ";
            read managechoice;
            case $managechoice in
                E|e) while [ "$managechoice" != "q" ]; do
                         $cleverecho "\n";
                         $cleverecho "Edit Module: \n\n"
                         if [ "$new_name"       =   "" ]; then $cleverecho "\t1. Package: ${dep[$xx]}\n"; fi
                         if [ "$new_name"       !=  "" ]; then $cleverecho "\t1. Package: $new_name\n"; fi

                         if [ "$new_depmethod"  =   "" ]; then $cleverecho "\t2. Install Method: ${depmethod[$xx]}\n"; fi
                         if [ "$new_depmethod" !=   "" ]; then $cleverecho "\t2. Install Method: $new_depmethod\n"; fi                         

                         if [ "$new_depsource"  =   "" ]; then $cleverecho "\t3. Install Source: ${depsource[$xx]}\n"; fi
                         if [ "$new_depsource" !=   "" ]; then $cleverecho "\t3. Install Source: $new_depsource\n"; fi

                         if [ "$new_depfilename" =  "" ]; then $cleverecho "\t4. File Name: ${depfilename[$xx]}\n"; fi
                         if [ "$new_depfilename" != "" ]; then $cleverecho "\t4. File Name: $new_depfilename\n"; fi
                         $cleverecho "\n"
                         $cleverecho "Enter Selection 1,2,3,4 (S to save, Q to quit): "
                         read subselection
                            case $subselection in
                                1) $cleverecho "Package Name: ";
                                   read new_name;;
                                2) $cleverecho "Install Method: ";
                                    read new_depmethod;;
                                3) $cleverecho "Install Source: ";
                                    read new_depsource;;
                                4) $cleverecho "File Name: ";
                                    read new_depfilename;;
                                S|s) write;;
                                Q|q) return 0;;
                            esac
                     done
                     ;;
                D|d) mv ${depfilename[$xx]} files/data/dependencies/hosts/$HOSTNAME/old-dependencies/;;
                Q|q) return 0;;
            esac;;
    esac
}

delete_module() {
    $pending;sleep 3;
    $cleverecho "Module Deletion Menu:                                                  \n";
    $cleverecho "                                                                       \n";
    $cleverecho ""
}

dependencies-menu(){
    
    while [ "$selection" != "Q|q" ]; do
    clear
    
    echo -e -n "Main Menu:                      \n";
    echo -e -n "                                \n";
    echo -e -n "\tA - Add Dependency            \n";
    echo -e -n "                                \n";
    echo -e -n "\tL - List Dependencies         \n";
    echo -e -n "                                \n";
    echo -e -n "\tM - Modify Dependency         \n";
    echo -e -n "                                \n";
    echo -e -n "\tD - Delete Dependency         \n";
    echo -e -n "                                \n";
    echo -e -n "Selection (A, L, M, D or Q): ";

    read selection

    case $selection in
        A|a)    add_module;;
        L|l)    list; $cleverecho "Press Enter to Continue ..."; read ;;
        M|m)    $pending; sleep 3;;
        D|d)    delete_module;;
        Q|q)    return 0;;
        *)  echo -e -n "Invalid Selection! Try again!";
            sleep 3
            ;;
    esac
    done
}

menu(){
    while [ "$selection" != "Q|q" ]; do
        clear
        echo -e -n "Main Menu:              \n";
        echo -e -n "                        \n";
        echo -e -n "\tC - Custom Install    \n";
        echo -e -n "                        \n";
        echo -e -n "\tD - Dependencies      \n";
        echo -e -n "                        \n";
        echo -e -n "\tQ - Quit              \n";
        echo -e -n "                        \n";
        echo -e -n "Selection: "

        read selection

        case $selection in
            C|c)    install-custom;;
            D|d)    dependencies-menu;;
            Q|q)    return 0;;
            *)  echo -e -n "Invalid Selection! Try again!";
                sleep 3
                ;;
        esac
    done
}

external_storage() {

    # Installs google-drive-ocamlfuse on Debian (Stretch & Buster)
    # Installs cifs-utils   ( well not yet )
    # Installs davfs2       ( well not yet )

    # TO DO List:
    #   \       -   Install scripts for cifs-utils  ( mounts samba shares )
    #   \       -   Install scripts for davfs2      ( mounts support for opendrive )

    echo $option1 $option2 $option3 $option4 $option5

    list_drives() {
	    # [[ -d /tmp/ ]] && echo it exists

	    if [ -d "~/.dfuse/" ]; then ls -l ~/.gdfuse/ | awk -F '[/ ]+' '// {print $9}'; else ls -l $HOME/.gdfuse/ | awk -F '[/ ]+' '// {print $9}'; fi

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
	    if [ "$2" = "install" ]; 	then install; fi
    	if [ "$2" = "headless" ]; 	then headless; fi
	    if [ "$2" = "mount" ]; 		then drivemount; fi
    	if [ "$2" = "list" ];	 	then list_drives; fi
	    if [ "$2" = "" ]; 			then nothing; fi

    }

# Generic options code below this line
   	
    if [ "$1" = "--test" ]; then
    
    CONFIGURATION=$CWD/files/data/configuration/$HOSTNAME.ini

    echo HOSTNAME=$HOSTNAME

    [[ -f $CONFIGURATION ]] && echo "Configuration File $CONFIGURATION exists!!" || echo "Configuration File $CONFIGURATION does not exists!!";
    [[ -f $CONFIGURATION ]] && source $CONFIGURATION

    if [ "$CWD" = "" ]; then $cleverecho "CWD Variable not defined!\n"; fi
    if [ "$CWD" != "" ]; then [[ -d $CWD ]] && $cleverecho "CWD $CWD exists!!\n" || $cleverecho "CWD - $CWD does not exists!!\n"; fi
 
    if [ "$MODULES" = "" ]; then $cleverecho "Modules Directory Variable not defined!\n"; fi
    if [ "$MODULES" != "" ]; then [[ -d $MODULES ]] && $cleverecho "Modules Directory $MODULES exists!!\n" || $cleverecho "Modules Directory - $MODULES does not exists!!\n"; fi

    exit 0

    fi

    if [ "$1" = "--edit" ]; then
    edit_module
    exit 0;
    fi

    if [ "$1" = "--storage" ]; then
    external_storage
    exit 0;
    fi

    if [ "$1" = "--about" ]; then
    about
    exit 0;
    fi

    if [ "$1" = "--test" ]; then
    module-management
    exit 0;
    fi

    if [ "$1" = "--misc" ]; then
    misc
    exit 0;
    fi

    if [ "$1" = "--install-custom" ]; then
    install-custom
    exit 0;
    fi

    if [ "$1" = "--help" ]; then
    help-system
    exit 0;
    fi

    if [ "$1" = "--list" ]; then
    list
    exit 0;
    fi

    if [ "$1" = "--install-custom" ]; then
    install-custom
    exit 0;
    fi


# Configurable module code below this line
    if [[ "$1" = "--configure" && "$2" = "hosts" ]]; then
    configure-hosts
    fi

    if [[ "$1" = "--configure" && "$2" = "networking" && "$3" = "show" ]]; then

    source files/data/ipallocation-$HOSTNAME.h
    if [ "$config" = "false" ]; then
        echo -e -n "Networking Configuration is not permitted for this host.\n\n"; sleep 5
	    exit 0;
    fi

    if [ "$config" = "true" ]; then

    echo -e -n "Network Management Screen: $HOSTNAME\n"
    echo -e -n "Default Interface: $defaultinterface\n"
    echo -e -n "Default IPv4 Primary Address: $defaultipv4\t\tDefault IPv4 Gateway: $defaultipv4gateway\n"
    echo -e -n "Secondary IPv4 Address: $secondaryipv4\t\tDefault IPv4 Gateway: $defaultipv4gateway\n"
    echo -e -n "IPv6:\n"
    if [ "$ipv6pool01" != "" ]; then echo -e -n "\tPool 1: $ipv6pool01\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool02" != "" ]; then echo -e -n "\tPool 2: $ipv6pool02\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool03" != "" ]; then echo -e -n "\tPool 3: $ipv6pool03\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool04" != "" ]; then echo -e -n "\tPool 4: $ipv6pool04\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool05" != "" ]; then echo -e -n "\tPool 5: $ipv6pool05\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool06" != "" ]; then echo -e -n "\tPool 6: $ipv6pool06\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool07" != "" ]; then echo -e -n "\tPool 7: $ipv6pool07\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool08" != "" ]; then echo -e -n "\tPool 8: $ipv6pool08\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool09" != "" ]; then echo -e -n "\tPool 9: $ipv6pool09\t\tDefault Gateway: $ipv6defaultgateway\n";  fi
    if [ "$ipv6pool10" != "" ]; then echo -e -n "\tPool 10: $ipv6pool10\t\tDefault Gateway: $ipv6defaultgateway\n"; fi
    echo -e -n "\n"
    echo -e -n "Specific IPv6 Hosts:\n"
    echo -e -n "IPv6 Pool One: \n"
    if [[ "$ipv6hostname101" && "$ipv6address101" != "" ]]; then echo -e -n "\t$ipv6hostname101 \t\t - $ipv6address101\n";   fi
    if [[ "$ipv6hostname102" && "$ipv6address102" != "" ]]; then echo -e -n "\t$ipv6hostname102 \t\t\t - $ipv6address102\n"; fi
    if [[ "$ipv6hostname103" && "$ipv6address103" != "" ]]; then echo -e -n "\t$ipv6hostname103 \t\t\t - $ipv6address103\n"; fi
    if [[ "$ipv6hostname104" && "$ipv6address104" != "" ]]; then echo -e -n "\t$ipv6hostname104 \t\t\t - $ipv6address104\n"; fi
    if [[ "$ipv6hostname105" && "$ipv6address105" != "" ]]; then echo -e -n "\t$ipv6hostname105 \t\t\t - $ipv6address105\n"; fi
    if [[ "$ipv6hostname106" && "$ipv6address106" != "" ]]; then echo -e -n "\t$ipv6hostname106 \t\t\t - $ipv6address106\n"; fi
    if [[ "$ipv6hostname107" && "$ipv6address107" != "" ]]; then echo -e -n "\t$ipv6hostname107 \t\t\t - $ipv6address107\n"; fi
    if [[ "$ipv6hostname108" && "$ipv6address108" != "" ]]; then echo -e -n "\t$ipv6hostname108 \t\t\t - $ipv6address108\n"; fi
    if [[ "$ipv6hostname109" && "$ipv6address109" != "" ]]; then echo -e -n "\t$ipv6hostname109 \t\t\t - $ipv6address109\n"; fi
    if [[ "$ipv6hostname110" && "$ipv6address110" != "" ]]; then echo -e -n "\t$ipv6hostname110 \t\t\t - $ipv6address110\n"; fi
    if [[ "$ipv6hostname111" && "$ipv6address111" != "" ]]; then echo -e -n "\t$ipv6hostname111 \t\t\t - $ipv6address111\n"; fi
    if [[ "$ipv6hostname112" && "$ipv6address112" != "" ]]; then echo -e -n "\t$ipv6hostname112 \t\t\t - $ipv6address112\n"; fi
    if [[ "$ipv6hostname113" && "$ipv6address113" != "" ]]; then echo -e -n "\t$ipv6hostname113 \t\t\t - $ipv6address113\n"; fi
    if [[ "$ipv6hostname114" && "$ipv6address114" != "" ]]; then echo -e -n "\t$ipv6hostname114 \t\t\t - $ipv6address114\n"; fi
    if [[ "$ipv6hostname115" && "$ipv6address115" != "" ]]; then echo -e -n "\t$ipv6hostname115 \t\t\t - $ipv6address115\n"; fi    
    
    echo -e -n "\n"
    echo -e -n "IPv6 Pool Two:\n"
    if [[ "$ipv6hostname201" && "$ipv6address201" != "" ]]; then echo -e -n "\t$ipv6hostname201 \t\t\t - $ipv6address201\n"; fi
    if [[ "$ipv6hostname202" && "$ipv6address202" != "" ]]; then echo -e -n "\t$ipv6hostname202 \t\t\t - $ipv6address202\n"; fi
    if [[ "$ipv6hostname203" && "$ipv6address203" != "" ]]; then echo -e -n "\t$ipv6hostname203 \t\t\t - $ipv6address203\n"; fi
    if [[ "$ipv6hostname204" && "$ipv6address204" != "" ]]; then echo -e -n "\t$ipv6hostname204 \t - $ipv6address204\n";     fi
    if [[ "$ipv6hostname205" && "$ipv6address205" != "" ]]; then echo -e -n "\t$ipv6hostname205 \t\t\t - $ipv6address205\n"; fi
    if [[ "$ipv6hostname206" && "$ipv6address206" != "" ]]; then echo -e -n "\t$ipv6hostname206 \t\t\t - $ipv6address206\n"; fi
    if [[ "$ipv6hostname207" && "$ipv6address207" != "" ]]; then echo -e -n "\t$ipv6hostname207 \t\t\t - $ipv6address207\n"; fi
    if [[ "$ipv6hostname208" && "$ipv6address208" != "" ]]; then echo -e -n "\t$ipv6hostname208 \t\t\t - $ipv6address208\n"; fi
    if [[ "$ipv6hostname209" && "$ipv6address209" != "" ]]; then echo -e -n "\t$ipv6hostname209 \t\t\t - $ipv6address209\n"; fi
    if [[ "$ipv6hostname210" && "$ipv6address210" != "" ]]; then echo -e -n "\t$ipv6hostname210 \t\t\t - $ipv6address210\n"; fi
    if [[ "$ipv6hostname211" && "$ipv6address211" != "" ]]; then echo -e -n "\t$ipv6hostname211 \t\t\t - $ipv6address211\n"; fi
    if [[ "$ipv6hostname212" && "$ipv6address212" != "" ]]; then echo -e -n "\t$ipv6hostname212 \t\t\t - $ipv6address212\n"; fi
    if [[ "$ipv6hostname213" && "$ipv6address213" != "" ]]; then echo -e -n "\t$ipv6hostname213 \t\t\t - $ipv6address213\n"; fi
    if [[ "$ipv6hostname214" && "$ipv6address214" != "" ]]; then echo -e -n "\t$ipv6hostname214 \t\t\t - $ipv6address214\n"; fi
    if [[ "$ipv6hostname215" && "$ipv6address215" != "" ]]; then echo -e -n "\t$ipv6hostname215 \t\t\t - $ipv6address215\n"; fi

    echo -e -n "\n"
    echo -e -n "IPv6 Pool Three:\n"
    if [[ "$ipv6hostname301" && "$ipv6address301" != "" ]]; then echo -e -n "\t$ipv6hostname301 \t\t\t - $ipv6address301\n"; fi
    if [[ "$ipv6hostname302" && "$ipv6address302" != "" ]]; then echo -e -n "\t$ipv6hostname302 \t\t\t - $ipv6address302\n"; fi
    if [[ "$ipv6hostname303" && "$ipv6address303" != "" ]]; then echo -e -n "\t$ipv6hostname303 \t\t\t - $ipv6address303\n"; fi
    if [[ "$ipv6hostname304" && "$ipv6address304" != "" ]]; then echo -e -n "\t$ipv6hostname304 \t\t\t - $ipv6address304\n"; fi
    if [[ "$ipv6hostname305" && "$ipv6address305" != "" ]]; then echo -e -n "\t$ipv6hostname305 \t\t\t - $ipv6address305\n"; fi
    if [[ "$ipv6hostname306" && "$ipv6address306" != "" ]]; then echo -e -n "\t$ipv6hostname306 \t\t\t - $ipv6address306\n"; fi
    if [[ "$ipv6hostname307" && "$ipv6address307" != "" ]]; then echo -e -n "\t$ipv6hostname307 \t\t\t - $ipv6address307\n"; fi
    if [[ "$ipv6hostname308" && "$ipv6address308" != "" ]]; then echo -e -n "\t$ipv6hostname308 \t\t\t - $ipv6address308\n"; fi
    if [[ "$ipv6hostname309" && "$ipv6address309" != "" ]]; then echo -e -n "\t$ipv6hostname309 \t\t\t - $ipv6address309\n"; fi
    if [[ "$ipv6hostname310" && "$ipv6address310" != "" ]]; then echo -e -n "\t$ipv6hostname310 \t\t\t - $ipv6address310\n"; fi
    if [[ "$ipv6hostname311" && "$ipv6address311" != "" ]]; then echo -e -n "\t$ipv6hostname311 \t\t\t - $ipv6address311\n"; fi
    if [[ "$ipv6hostname312" && "$ipv6address312" != "" ]]; then echo -e -n "\t$ipv6hostname312 \t\t\t - $ipv6address312\n"; fi
    if [[ "$ipv6hostname313" && "$ipv6address313" != "" ]]; then echo -e -n "\t$ipv6hostname313 \t\t\t - $ipv6address313\n"; fi
    if [[ "$ipv6hostname314" && "$ipv6address314" != "" ]]; then echo -e -n "\t$ipv6hostname314 \t\t\t - $ipv6address314\n"; fi
    if [[ "$ipv6hostname315" && "$ipv6address315" != "" ]]; then echo -e -n "\t$ipv6hostname315 \t\t\t - $ipv6address315\n"; fi

    echo -e -n "\n"
    echo -e -n "IPv6 Pool Four:\n"

    if [[ "$ipv6hostname401" && "$ipv6address401" != "" ]]; then echo -e -n "\t$ipv6hostname401 \t\t\t - $ipv6address401\n"; fi
    if [[ "$ipv6hostname402" && "$ipv6address402" != "" ]]; then echo -e -n "\t$ipv6hostname402 \t\t\t - $ipv6address402\n"; fi
    if [[ "$ipv6hostname403" && "$ipv6address403" != "" ]]; then echo -e -n "\t$ipv6hostname403 \t\t\t - $ipv6address403\n"; fi
    if [[ "$ipv6hostname404" && "$ipv6address404" != "" ]]; then echo -e -n "\t$ipv6hostname404 \t\t\t - $ipv6address404\n"; fi
    if [[ "$ipv6hostname405" && "$ipv6address405" != "" ]]; then echo -e -n "\t$ipv6hostname405 \t\t\t - $ipv6address405\n"; fi
    if [[ "$ipv6hostname406" && "$ipv6address406" != "" ]]; then echo -e -n "\t$ipv6hostname406 \t\t\t - $ipv6address406\n"; fi
    if [[ "$ipv6hostname407" && "$ipv6address407" != "" ]]; then echo -e -n "\t$ipv6hostname407 \t\t\t - $ipv6address407\n"; fi
    if [[ "$ipv6hostname408" && "$ipv6address408" != "" ]]; then echo -e -n "\t$ipv6hostname408 \t\t\t - $ipv6address408\n"; fi
    if [[ "$ipv6hostname409" && "$ipv6address409" != "" ]]; then echo -e -n "\t$ipv6hostname409 \t\t\t - $ipv6address409\n"; fi
    if [[ "$ipv6hostname410" && "$ipv6address410" != "" ]]; then echo -e -n "\t$ipv6hostname410 \t\t\t - $ipv6address410\n"; fi
    if [[ "$ipv6hostname411" && "$ipv6address411" != "" ]]; then echo -e -n "\t$ipv6hostname411 \t\t\t - $ipv6address411\n"; fi
    if [[ "$ipv6hostname412" && "$ipv6address412" != "" ]]; then echo -e -n "\t$ipv6hostname412 \t\t\t - $ipv6address412\n"; fi
    if [[ "$ipv6hostname413" && "$ipv6address413" != "" ]]; then echo -e -n "\t$ipv6hostname413 \t\t\t - $ipv6address413\n"; fi
    if [[ "$ipv6hostname414" && "$ipv6address414" != "" ]]; then echo -e -n "\t$ipv6hostname414 \t\t\t - $ipv6address414\n"; fi
    if [[ "$ipv6hostname415" && "$ipv6address415" != "" ]]; then echo -e -n "\t$ipv6hostname415 \t\t\t - $ipv6address415\n"; fi
    fi
    exit 0;
    fi

    if [[ "$1" = "--configure" && "$2" = "networking" && "$3" = "generate" ]]; then
    generatedfile=files/data/eth0.network-generated-$HOSTNAME
    source files/data/ipallocation-$HOSTNAME.h
    echo -e -n "Please Wait!!\n\n"
    rm $generatedfile
    echo -e -n "[Match]\n" >> $generatedfile

    if [ "$defaultinterface" != "" ]; then    echo -e -n "Name=$defaultinterface\n\n"                               >> $generatedfile; fi
    echo -e -n "[Network]\n\n"                                                                                      >> $generatedfile
    if [ "$defaultipv4" != "" ];        then  echo -e -n "Address=$defaultipv4\n"                                   >> $generatedfile; fi
    if [ "$secondaryipv4" != "" ];      then  echo -e -n "Address=$secondaryipv4\n"                                 >> $generatedfile; fi
    if [ "$defaultipv4gateway" != "" ]; then  echo -e -n "Gateway=$defaultipv4gateway\n"                            >> $generatedfile; fi
    if [ "$defaultipv6" != "" ];        then  echo -e -n "\n# Default IPv6 Address:\nAddress=$defaultipv6\n"        >> $generatedfile; fi
    if [ "$ipv6defaultgateway" != "" ]; then  echo -e -n "# Default IPv6 Gateway:\nGateway=$ipv6defaultgateway\n"   >> $generatedfile; fi
    echo -e -n "\n"                                                                                                 >> $generatedfile

    echo -e -n "# Customer IPv6 Pool One:\n"                                                                        >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile

    if [ "$ipv6hostname101" != "" ];        then    echo -e -n "# $ipv6hostname101\n"                               >> $generatedfile; fi
    if [ "$ipv6address101" != "" ];         then    echo -e -n "Address=$ipv6address101\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway101" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway101"                     >> $generatedfile; fi

    if [ "$ipv6hostname102" != "" ];        then    echo -e -n "# $ipv6hostname102\n"                               >> $generatedfile; fi
    if [ "$ipv6address102" != "" ];         then    echo -e -n "Address=$ipv6address102\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway102" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway102"                     >> $generatedfile; fi

    if [ "$ipv6hostname103" != "" ];        then    echo -e -n "# $ipv6hostname103\n"                               >> $generatedfile; fi
    if [ "$ipv6address103" != "" ];         then    echo -e -n "Address=$ipv6address103\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway103" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway103"                     >> $generatedfile; fi

    if [ "$ipv6hostname104" != "" ];        then    echo -e -n "# $ipv6hostname104\n"                               >> $generatedfile; fi
    if [ "$ipv6address104" != "" ];         then    echo -e -n "Address=$ipv6address104\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway104" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway104"                     >> $generatedfile; fi

    if [ "$ipv6hostname105" != "" ];        then    echo -e -n "# $ipv6hostname105\n"                               >> $generatedfile; fi
    if [ "$ipv6address105" != "" ];         then    echo -e -n "Address=$ipv6address105\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway105" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway105"                     >> $generatedfile; fi

    if [ "$ipv6hostname106" != "" ];        then    echo -e -n "# $ipv6hostname106\n"                               >> $generatedfile; fi
    if [ "$ipv6address106" != "" ];         then    echo -e -n "Address=$ipv6address106\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway106" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway106"                     >> $generatedfile; fi

    if [ "$ipv6hostname107" != "" ];        then    echo -e -n "# $ipv6hostname107\n"                               >> $generatedfile; fi
    if [ "$ipv6address107" != "" ];         then    echo -e -n "Address=$ipv6address107\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway107" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway107"                     >> $generatedfile; fi

    if [ "$ipv6hostname108" != "" ];        then    echo -e -n "# $ipv6hostname108\n"                               >> $generatedfile; fi
    if [ "$ipv6address108" != "" ];         then    echo -e -n "Address=$ipv6address108\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway108" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway108"                     >> $generatedfile; fi

    if [ "$ipv6hostname109" != "" ];        then    echo -e -n "# $ipv6hostname109\n"                               >> $generatedfile; fi
    if [ "$ipv6address109" != "" ];         then    echo -e -n "Address=$ipv6address109\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway109" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway109"                     >> $generatedfile; fi

    if [ "$ipv6hostname110" != "" ];        then    echo -e -n "# $ipv6hostname110\n"                               >> $generatedfile; fi
    if [ "$ipv6address110" != "" ];         then    echo -e -n "Address=$ipv6address110\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway110" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway110"                     >> $generatedfile; fi

    if [ "$ipv6hostname111" != "" ];        then    echo -e -n "# $ipv6hostname111\n"                               >> $generatedfile; fi
    if [ "$ipv6address111" != "" ];         then    echo -e -n "Address=$ipv6address111\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway111" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway111"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname112" != "" ];        then    echo -e -n "# $ipv6hostname112\n"                               >> $generatedfile; fi
    if [ "$ipv6address112" != "" ];         then    echo -e -n "Address=$ipv6address112\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway112" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway112"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname113" != "" ];        then    echo -e -n "# $ipv6hostname113\n"                               >> $generatedfile; fi
    if [ "$ipv6address113" != "" ];         then    echo -e -n "Address=$ipv6address113\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway113" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway113"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname114" != "" ];        then    echo -e -n "# $ipv6hostname114\n"                               >> $generatedfile; fi
    if [ "$ipv6address114" != "" ];         then    echo -e -n "Address=$ipv6address114\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway114" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway114"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname115" != "" ];        then    echo -e -n "# $ipv6hostname115\n"                               >> $generatedfile; fi
    if [ "$ipv6address115" != "" ];         then    echo -e -n "Address=$ipv6address115\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway115" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway115"                     >> $generatedfile; fi

    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile

    echo -e -n "# Customer IPv6 Pool Two:\n"                                                                        >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile

    if [ "$ipv6hostname201" != "" ];        then    echo -e -n "# $ipv6hostname201\n"                               >> $generatedfile; fi
    if [ "$ipv6address201" != "" ];         then    echo -e -n "Address=$ipv6address201\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway201" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway201"                     >> $generatedfile; fi

    if [ "$ipv6hostname202" != "" ];        then    echo -e -n "# $ipv6hostname202\n"                               >> $generatedfile; fi
    if [ "$ipv6address202" != "" ];         then    echo -e -n "Address=$ipv6address202\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway202" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway202"                     >> $generatedfile; fi

    if [ "$ipv6hostname203" != "" ];        then    echo -e -n "# $ipv6hostname203\n"                               >> $generatedfile; fi
    if [ "$ipv6address203" != "" ];         then    echo -e -n "Address=$ipv6address203\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway203" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway203"                     >> $generatedfile; fi

    if [ "$ipv6hostname204" != "" ];        then    echo -e -n "# $ipv6hostname204\n"                               >> $generatedfile; fi
    if [ "$ipv6address204" != "" ];         then    echo -e -n "Address=$ipv6address204\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway204" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway204"                     >> $generatedfile; fi

    if [ "$ipv6hostname205" != "" ];        then    echo -e -n "# $ipv6hostname205\n"                               >> $generatedfile; fi
    if [ "$ipv6address205" != "" ];         then    echo -e -n "Address=$ipv6address205\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway205" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway205"                     >> $generatedfile; fi

    if [ "$ipv6hostname206" != "" ];        then    echo -e -n "# $ipv6hostname206\n"                               >> $generatedfile; fi
    if [ "$ipv6address206" != "" ];         then    echo -e -n "Address=$ipv6address206\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway206" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway206"                     >> $generatedfile; fi

    if [ "$ipv6hostname207" != "" ];        then    echo -e -n "# $ipv6hostname207\n"                               >> $generatedfile; fi
    if [ "$ipv6address207" != "" ];         then    echo -e -n "Address=$ipv6address207\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway207" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway207"                     >> $generatedfile; fi

    if [ "$ipv6hostname208" != "" ];        then    echo -e -n "# $ipv6hostname208\n"                               >> $generatedfile; fi
    if [ "$ipv6address208" != "" ];         then    echo -e -n "Address=$ipv6address208\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway208" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway208"                     >> $generatedfile; fi

    if [ "$ipv6hostname209" != "" ];        then    echo -e -n "# $ipv6hostname209\n"                               >> $generatedfile; fi
    if [ "$ipv6address209" != "" ];         then    echo -e -n "Address=$ipv6address209\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway209" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway209"                     >> $generatedfile; fi

    if [ "$ipv6hostname210" != "" ];        then    echo -e -n "# $ipv6hostname210\n"                               >> $generatedfile; fi
    if [ "$ipv6address210" != "" ];         then    echo -e -n "Address=$ipv6address210\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway210" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway210"                     >> $generatedfile; fi

    if [ "$ipv6hostname211" != "" ];        then    echo -e -n "# $ipv6hostname211\n"                               >> $generatedfile; fi
    if [ "$ipv6address211" != "" ];         then    echo -e -n "Address=$ipv6address211\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway211" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway211"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname212" != "" ];        then    echo -e -n "# $ipv6hostname212\n"                               >> $generatedfile; fi
    if [ "$ipv6address212" != "" ];         then    echo -e -n "Address=$ipv6address212\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway212" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway212"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname213" != "" ];        then    echo -e -n "# $ipv6hostname213\n"                               >> $generatedfile; fi
    if [ "$ipv6address213" != "" ];         then    echo -e -n "Address=$ipv6address213\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway213" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway213"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname214" != "" ];        then    echo -e -n "# $ipv6hostname214\n"                               >> $generatedfile; fi
    if [ "$ipv6address214" != "" ];         then    echo -e -n "Address=$ipv6address214\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway214" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway214"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname215" != "" ];        then    echo -e -n "# $ipv6hostname215\n"                               >> $generatedfile; fi
    if [ "$ipv6address215" != "" ];         then    echo -e -n "Address=$ipv6address215\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway215" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway215"                     >> $generatedfile; fi
    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile

    echo -e -n "# Customer IPv6 Pool Three:\n"                                                                      >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile

    if [ "$ipv6hostname301" != "" ];        then    echo -e -n "# $ipv6hostname301\n"                               >> $generatedfile; fi
    if [ "$ipv6address301" != "" ];         then    echo -e -n "Address=$ipv6address301\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway301" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway301"                     >> $generatedfile; fi

    if [ "$ipv6hostname302" != "" ];        then    echo -e -n "# $ipv6hostname302\n"                               >> $generatedfile; fi
    if [ "$ipv6address302" != "" ];         then    echo -e -n "Address=$ipv6address302\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway302" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway302"                     >> $generatedfile; fi

    if [ "$ipv6hostname303" != "" ];        then    echo -e -n "# $ipv6hostname303\n"                               >> $generatedfile; fi
    if [ "$ipv6address303" != "" ];         then    echo -e -n "Address=$ipv6address303\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway303" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway303"                     >> $generatedfile; fi

    if [ "$ipv6hostname304" != "" ];        then    echo -e -n "# $ipv6hostname304\n"                               >> $generatedfile; fi
    if [ "$ipv6address304" != "" ];         then    echo -e -n "Address=$ipv6address304\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway304" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway304"                     >> $generatedfile; fi

    if [ "$ipv6hostname305" != "" ];        then    echo -e -n "# $ipv6hostname305\n"                               >> $generatedfile; fi
    if [ "$ipv6address305" != "" ];         then    echo -e -n "Address=$ipv6address305\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway305" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway305"                     >> $generatedfile; fi

    if [ "$ipv6hostname306" != "" ];        then    echo -e -n "# $ipv6hostname306\n"                               >> $generatedfile; fi
    if [ "$ipv6address306" != "" ];         then    echo -e -n "Address=$ipv6address306\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway306" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway306"                     >> $generatedfile; fi

    if [ "$ipv6hostname307" != "" ];        then    echo -e -n "# $ipv6hostname307\n"                               >> $generatedfile; fi
    if [ "$ipv6address307" != "" ];         then    echo -e -n "Address=$ipv6address307\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway307" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway307"                     >> $generatedfile; fi

    if [ "$ipv6hostname308" != "" ];        then    echo -e -n "# $ipv6hostname308\n"                               >> $generatedfile; fi
    if [ "$ipv6address308" != "" ];         then    echo -e -n "Address=$ipv6address308\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway308" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway308"                     >> $generatedfile; fi

    if [ "$ipv6hostname309" != "" ];        then    echo -e -n "# $ipv6hostname309\n"                               >> $generatedfile; fi
    if [ "$ipv6address309" != "" ];         then    echo -e -n "Address=$ipv6address309\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway309" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway309"                     >> $generatedfile; fi

    if [ "$ipv6hostname310" != "" ];        then    echo -e -n "# $ipv6hostname310\n"                               >> $generatedfile; fi
    if [ "$ipv6address310" != "" ];         then    echo -e -n "Address=$ipv6address310\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway310" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway310"                     >> $generatedfile; fi

    if [ "$ipv6hostname311" != "" ];        then    echo -e -n "# $ipv6hostname311\n"                               >> $generatedfile; fi
    if [ "$ipv6address311" != "" ];         then    echo -e -n "Address=$ipv6address311\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway311" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway311"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname312" != "" ];        then    echo -e -n "# $ipv6hostname312\n"                               >> $generatedfile; fi
    if [ "$ipv6address312" != "" ];         then    echo -e -n "Address=$ipv6address312\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway312" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway312"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname313" != "" ];        then    echo -e -n "# $ipv6hostname313\n"                               >> $generatedfile; fi
    if [ "$ipv6address313" != "" ];         then    echo -e -n "Address=$ipv6address313\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway313" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway313"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname314" != "" ];        then    echo -e -n "# $ipv6hostname314\n"                               >> $generatedfile; fi
    if [ "$ipv6address314" != "" ];         then    echo -e -n "Address=$ipv6address314\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway314" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway314"                     >> $generatedfile; fi
    
    if [ "$ipv6hostname315" != "" ];        then    echo -e -n "# $ipv6hostname315\n"                               >> $generatedfile; fi
    if [ "$ipv6address315" != "" ];         then    echo -e -n "Address=$ipv6address315\n"                          >> $generatedfile; fi
    if [ "$ipv6defaultgateway315" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway315"                     >> $generatedfile; fi
 
 
    echo -e -n "\n"                                                                                  >> $generatedfile
    echo -e -n "\n"                                                                                  >> $generatedfile

    echo -e -n "# Customer IPv6 Pool Four:\n"                                                        >> $generatedfile
    echo -e -n "\n"                                                                                  >> $generatedfile

    if [ "$ipv6hostname401" != "" ];        then    echo -e -n "# $ipv6hostname401\n"               >> $generatedfile; fi
    if [ "$ipv6address401" != "" ];         then    echo -e -n "Address=$ipv6address401\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway401" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway401"     >> $generatedfile; fi

    if [ "$ipv6hostname402" != "" ];        then    echo -e -n "# $ipv6hostname402\n"               >> $generatedfile; fi
    if [ "$ipv6address402" != "" ];         then    echo -e -n "Address=$ipv6address402\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway402" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway402"     >> $generatedfile; fi

    if [ "$ipv6hostname403" != "" ];        then    echo -e -n "# $ipv6hostname403\n"               >> $generatedfile; fi
    if [ "$ipv6address403" != "" ];         then    echo -e -n "Address=$ipv6address403\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway403" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway403"     >> $generatedfile; fi

    if [ "$ipv6hostname404" != "" ];        then    echo -e -n "# $ipv6hostname404\n"               >> $generatedfile; fi
    if [ "$ipv6address404" != "" ];         then    echo -e -n "Address=$ipv6address404\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway404" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway404"     >> $generatedfile; fi

    if [ "$ipv6hostname405" != "" ];        then    echo -e -n "# $ipv6hostname405\n"               >> $generatedfile; fi
    if [ "$ipv6address405" != "" ];         then    echo -e -n "Address=$ipv6address405\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway405" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway405"     >> $generatedfile; fi

    if [ "$ipv6hostname406" != "" ];        then    echo -e -n "# $ipv6hostname406\n"               >> $generatedfile; fi
    if [ "$ipv6address406" != "" ];         then    echo -e -n "Address=$ipv6address406\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway406" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway406"     >> $generatedfile; fi

    if [ "$ipv6hostname407" != "" ];        then    echo -e -n "# $ipv6hostname407\n"               >> $generatedfile; fi
    if [ "$ipv6address407" != "" ];         then    echo -e -n "Address=$ipv6address407\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway407" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway407"     >> $generatedfile; fi

    if [ "$ipv6hostname408" != "" ];        then    echo -e -n "# $ipv6hostname408\n"               >> $generatedfile; fi
    if [ "$ipv6address408" != "" ];         then    echo -e -n "Address=$ipv6address408\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway408" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway408"     >> $generatedfile; fi

    if [ "$ipv6hostname409" != "" ];        then    echo -e -n "# $ipv6hostname409\n"               >> $generatedfile; fi
    if [ "$ipv6address409" != "" ];         then    echo -e -n "Address=$ipv6address409\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway409" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway409"     >> $generatedfile; fi

    if [ "$ipv6hostname410" != "" ];        then    echo -e -n "# $ipv6hostname410\n"               >> $generatedfile; fi
    if [ "$ipv6address410" != "" ];         then    echo -e -n "Address=$ipv6address410\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway410" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway410"     >> $generatedfile; fi

    if [ "$ipv6hostname411" != "" ];        then    echo -e -n "# $ipv6hostname411\n"               >> $generatedfile; fi
    if [ "$ipv6address411" != "" ];         then    echo -e -n "Address=$ipv6address411\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway411" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway411"     >> $generatedfile; fi
    
    if [ "$ipv6hostname412" != "" ];        then    echo -e -n "# $ipv6hostname412\n"               >> $generatedfile; fi
    if [ "$ipv6address412" != "" ];         then    echo -e -n "Address=$ipv6address12\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway412" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway12"     >> $generatedfile; fi
    
    if [ "$ipv6hostname413" != "" ];        then    echo -e -n "# $ipv6hostname413\n"               >> $generatedfile; fi
    if [ "$ipv6address413" != "" ];         then    echo -e -n "Address=$ipv6address413\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway413" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway413"     >> $generatedfile; fi
    
    if [ "$ipv6hostname414" != "" ];        then    echo -e -n "# $ipv6hostname414\n"               >> $generatedfile; fi
    if [ "$ipv6address414" != "" ];         then    echo -e -n "Address=$ipv6address414\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway414" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway414"     >> $generatedfile; fi
    
    if [ "$ipv6hostname415" != "" ];        then    echo -e -n "# $ipv6hostname415\n"               >> $generatedfile; fi
    if [ "$ipv6address415" != "" ];         then    echo -e -n "Address=$ipv6address415\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway415" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway415"     >> $generatedfile; fi

    echo -e -n "Please check the contents of $generatedfile\n\n"
    exit 0;
    fi


    if [[ "$1" = "--configure" && "$2" = "networking" ]]; then
    echo yup it works
    exit 0;
    fi

# Configure-Setup code below this line

    if [[ "$1" = "--configure" && "$2" = "setup" ]]; then
    configure-setup;
    exit 0;
    fi

    if [ "$1" = "--configure" ]; then
    configure
    exit 0;
    fi

# Dependency Code below this line

    if [[ "$1" = "--dependencies" && "$2" = "check" ]]; then
    dependencies-check
    exit 0;
    fi

    if [[ "$1" = "--dependencies" && "$2" = "install" ]]; then
    dependencies-install
    exit 0;
    fi

# Git Repos Code below this line

    if [[ "$1" = "--git-repos" && "$2" = "install" ]]; then
    git-repos-install
    exit 0;
    fi

    if [ "$1" = "--git-repos" ]; then
    $pending
    exit 0;
    fi

# Main Menu Code below here
    if [ "$1" = "--menu" ]; then
    menu
    exit 0;
    fi

# Main routine Code below this line

    main() {
        $cleverecho "Welcome\n"
        $cleverecho "This utility requires the use of command-line arguments. Please try $0 --help \n\n"
        exit 0;
    }

main
