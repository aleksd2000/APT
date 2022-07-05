#!/bin/bash

# Custom setup script for me
# Created by: Aleks on April 4th 2021 @ 02:29

# The purpose of this script will be to download and install everything that I could need to setup a fresh
# Virtual Machine on any hosting provider

# But it probably won't work. ... Yet at least :)

cleverecho="/bin/echo -e -n"
github_base="$HOME/github"
Downloads="$HOME/Downloads"
progname="~/github/bin/personal.sh"



dep1="iptables"             # Core System Utility 					                [iptables 1.8.2-4]
dep2="fail2ban"             # fail2ban 						                        [fail2ban 0.10.2-2.1] 
dep3="code-server"          # Code-Server                                           [code-server 3.9.2]
dep4="shc"                  # Generic Shell Script Compiler 			            [shc 3.9.6]
dep5="screen"               # Screen (to Background processes and restore later)    [screen 4.6.2-3+deb10u1]
dep6="git"                  # Git (We probably won't need this line ...)		    [git 1:2.20.1-2+deb10u3]
dep7="maven"                # Maven Java Compiler					                [maven 3.6.0-1]
dep8="default-jre"          # Java Runtime Environment				                [default-jre 2:1.11-71]
dep9="default-jdk"          # Java Development Kit					                [default-jdk 2:1.11-71]
dep10="default-jdk-doc"     # Java Development Kit - Documentation	                [default-jdk-doc 2:1.11-71]

# Now let's check for those programs we can't live without!!
check_depend() {
	dpkg-query --show  "$dep1"
	dpkg-query --show  "$dep2"
	dpkg-query --show  "$dep3"
	dpkg-query --show  "$dep4"
	dpkg-query --show  "$dep5"
	dpkg-query --show  "$dep6"
	dpkg-query --show  "$dep7"
	dpkg-query --show  "$dep8"
	dpkg-query --show  "$dep9"
	dpkg-query --show  "$dep10"
	dpkg-query --show  "$dep11"
	dpkg-query --show  "$dep12"
	dpkg-query --show  "$dep13"
	dpkg-query --show  "$dep14"
	dpkg-query --show  "$dep15"
	dpkg-query --show  "$dep16"
	dpkg-query --show  "$dep17"
	dpkg-query --show  "$dep18"
	dpkg-query --show  "$dep18"
	dpkg-query --show  "$dep19"
	dpkg-query --show  "$dep20"
	dpkg-query --show  "$dep21"
	dpkg-query --show  "$dep22"
	dpkg-query --show  "$dep23"
	dpkg-query --show  "$dep24"
	dpkg-query --show  "$dep25"
	dpkg-query --show  "$dep26"
	dpkg-query --show  "$dep27"
	dpkg-query --show  "$dep28"
	dpkg-query --show  "$dep29"
	dpkg-query --show  "$dep30"	
}

dependencies() {
    $cleverecho "Checking for Dependencies \n"

if [ "$dep1" != "" ]
 then
    $cleverecho "\nChecking for $dep1\n"

    dpkg-query --show  "$dep1"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep1 found\n"
            else
                $cleverecho "$dep1" not found. Please approve installation.
                sudo apt-get install "$dep1"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep1 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #1 - Empty!\n"
fi

if [ "$dep2" != "" ]; then

    $cleverecho "\nChecking for $dep2\n"

    dpkg-query --show  "$dep2"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep2 found\n"	
            else
                $cleverecho "$dep2 not found. Please approve installation.\n"
                sudo apt-get install "$dep2"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep2 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #2 - Empty\n"
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
                        yes) curl -fsSL https://code-server.dev/install.sh | sh -s --
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
                sudo apt-get install "$dep4"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep4 installed successfully.\n"
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
                $cleverecho "$dep5 not found. Please approve installation.\n"
                sudo apt-get install "$dep5"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep5 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #5 - Empty!\n"
fi

if [ "$dep6" != "" ]; then

$cleverecho "\nChecking for $dep6\n"

    dpkg-query --show  "$dep6"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep6 found\n"	
            else
                $cleverecho "$dep6 not found. Please approve installation.\n"
                sudo apt-get install "$dep6"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep6 installed successfully.\n"
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
                $cleverecho "$dep7 not found. Please approve installation.\n"
                sudo apt-get install "$dep7"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep7 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #7 - Empty!\n"
fi

if [ "$dep8" != "" ]; then

$cleverecho "\nChecking for $dep8\n"

    dpkg-query --show  "$dep8"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep8 found\n"	
            else
                $cleverecho "$dep8 not found. Please approve installation.\n"
                sudo apt-get install "$dep8"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep8 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #8 - Empty!\n"
fi

if [ "$dep9" != "" ]; then

$cleverecho "\nChecking for $dep9\n"

    dpkg-query --show  "$dep9"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep9 found\n"	
            else
                $cleverecho "$dep9 not found. Please approve installation.\n"
                sudo apt-get install "$dep9"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep9 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #9 - Empty!\n"
fi

if [ "$dep10" != "" ]; then

$cleverecho "\nChecking for $dep10\n"

    dpkg-query --show  "$dep10"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep10 found\n"	
            else
                $cleverecho "$dep10 not found. Please approve installation.\n"
                sudo apt-get install "$dep10"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep10 installed successfully.\n"
        fi
    fi
else
    $cleverecho "Dependency #10 - Empty!\n"
fi
}

defaults() {

# I'm thinking I'm going to need more dependency checkers....

dep1="iptables"             # Core System Utility 					                [iptables 1.8.2-4]
dep2="fail2ban"             # fail2ban 						                        [fail2ban 0.10.2-2.1] 
dep3="code-server"          # Code-Server                                           [code-server 3.9.2]
dep4="shc"                  # Generic Shell Script Compiler 			            [shc 3.9.6]
dep5="screen"               # Screen (to Background processes and restore later)    [screen 4.6.2-3+deb10u1]
dep6="git"                  # Git (We probably won't need this line ...)		    [git 1:2.20.1-2+deb10u3]
dep7="maven"                # Maven Java Compiler					                [maven 3.6.0-1]
dep8="default-jre"          # Java Runtime Environment				                [default-jre 2:1.11-71]
dep9="default-jdk"          # Java Development Kit					                [default-jdk 2:1.11-71]
dep10="default-jdk-doc"     # Java Development Kit - Documentation	                [default-jdk-doc 2:1.11-71]

dep11=""	#
dep12=""	#
dep13=""	#
dep14=""	#
dep15=""	#
dep16=""	#
dep17=""	#
dep18=""	#
dep19=""	#
dep20=""	#

dep21=""	#
dep22=""	#
dep23=""	#
dep24=""	#
dep25=""	#
dep26=""	#
dep27=""	#
dep28=""	#
dep29=""	#
dep30=""	#

}

minecraft_install() {
    $cleverecho "Before running this script, please run $progname --check\n"
    $cleverecho "Do you wish to run that now? "
    read runcheck
        case $runcheck
            in
                yes)    $cleverecho "Checking the Directory Structures first ...\n"
                        if [ -d $github_base/Minecraft/ ]
                            then
		                        $cleverecho "Checking for Minecraft Root Directory\n"
		                        $cleverecho "** Directory exists **\n"
                                if [ -d $github_base/Minecraft/git ]
                                     then
		                                $cleverecho "Checking for $github_base/Minecraft/git/ \n"
		                                $cleverecho "** Directory exists **\n"                    
                                    else
                                        $cleverecho "$github_base/Minecraft/git Does not Exist...\n"
                                        $cleverecho "Do you wish to make it?"
                                        read makeit
                                        case $makeit
                                            in
                                                Yes | yes | YES | y | Y )   mkdir $github_base/Minecraft/git;;
                                                No | no | NO | N | n )      $cleverecho "Too bad, no plugins for you then!\n";;
                                                * )                         $cleverecho "Please answer the question!\n";;
                                        esac
                                fi
                        	else
	                        $cleverecho "$github_base/Minecraft/ Does not exist!!\n"
                                $cleverecho "Do you want to make it? "
                                read makeit
                                case $makeit
                                    in
                                        Y | y | YES | Yes | yes ) mkdir $github_base/Minecraft
                                                                  minecraft_install;;
                                        N | n | NO | No | no )    $cleverecho "That's too bad"
                                                                  exit;;
                                                        * )       $cleverecho "That's a Yes or No question really isn't it?"
                                                                  exit;;
                                esac  
                        fi
                        ;;
                no) $cleverecho "Ok, skipping.\n"
                        ;;
        esac

    $cleverecho "Do you wish to download Minecraft Server (Java Edition)? "
    read downloadminecraft
        case $downloadminecraft
            in
                yes)    $cleverecho "Download Spigot BuildTools for Java Edition? "
                        read downloadbuildtools
                            case $downloadbuildtools
                                in
                                    yes) $cleverecho "Downloading Spigot BuildTools for Java Edition ...\n"
                                         cd $github_base/Minecraft
                                         wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar
                                         sleep 2
                                         ;;
                                    no)  $cleverecho "Ok, skipping ...\n";;
                            esac
                        
                        $cleverecho "Download Multiverse-Core Plugin? "
                        read downloadmultiversecore
                            case $downloadmultiversecore
                                in
                                    yes) $cleverecho "git Cloning Multiverse-Core ...\n"
                                         cd $github_base/Minecraft/git/  
                                         git clone https://github.com/Multiverse/Multiverse-Core
                                         sleep 2
                                         ;;
                                    no)  $cleverecho "OK, skipping ...\n"
                                         ;;
                            esac

                        $cleverecho "Download Multiverse-Portals Plugin? "
                        read downloadmultiverseportals
                            case $downloadmultiverseportals
                                in
                                    yes) $cleverecho "git Cloning Multiverse-Portals ...\n"
                                         cd $github_base/Minecraft/git/
                                         git clone https://github.com/Multiverse/Multiverse-Portals
                                         sleep 2
                                         ;;
                                    no)  $cleverecho "OK, skipping ...\n"
                                         ;;
                            esac
                        
                        $cleverecho "Download Geyser-Spigot Plugin? "
                        read downloadgeyserspigotplugin
                            case $downloadgeyserspigotplugin
                                in
                                    yes) $cleverecho "Downloading Geyser-Spigot ...\n"
            		                     cd $github_base/Minecraft/plugins/ 
                                         wget https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/spigot/target/Geyser-Spigot.jar -O Geyser-Spigot.jar
                                         ;;
                                    no)  $cleverecho "OK, skipping ...\n"
                                         ;;
                            esac

                        $cleverecho "Download WorldEdit Plugin? "
                        read downloadworldeditplugin
                            case $downloadworldeditplugin
                                in
                                    yes) $cleverecho "Downloading WorldEdit ...\n"
			                             cd $github_base/Minecraft/git/
                                         git clone https://github.com/EngineHub/WorldEdit
                                         ;;
                                    no)  $cleverecho "OK, skipping ...\n"
                                         ;;
                            esac
                            ;;
                no)     $cleverecho "Ok, thanks.\n"
                        exit
                        ;;
                *)      $cleverecho "yes or no only here please....\n"
                        exit
                        ;;
        esac
    $cleverecho "Do you wish to download the plugins for Minecraft Server (Java Edition)? "
    read downloadplugins
        case $downloadplugins
            in
                yes)    $cleverecho "Checking the Directory Structures first ...\n"
                        if [ -d $github_base/Minecraft/ ]
                            then
		                        $cleverecho "Checking for Minecraft Root Directory\n"
		                        $cleverecho "** Directory exists **\n"
                                if [ -d $github_base/Minecraft/git ]
                                     then
		                                $cleverecho "Checking for $github_base/Minecraft/git/ \n"
		                                $cleverecho "** Directory exists **\n"
                                        cd $github_base/Minecraft/git/
                                        touch .test
                                        git clone https://github.com/Multiverse/Multiverse-Core
                                        git clone https://github.com/Multiverse/Multiverse-Portals
	                                
                                    else
                                        $cleverecho "$github_base/Minecraft/git Does not Exist...\n"
                                        $cleverecho "Do you wish to make it?"
                                        read makeit
                                        case $makeit
                                            in
                                                Yes | yes | YES | y | Y )   mkdir $github_base/Minecraft/git;;
                                                No | no | NO | N | n )      $cleverecho "Too bad, no plugins for you then!\n";;
                                                * )                         $cleverecho "Please answer the question!\n";;
                                        esac
                                fi
                        	else
	                        $cleverecho "$github_base/Minecraft/ Does not exist!!\n"
                                $cleverecho "Do you want to make it? "
                                read makeit
                                case $makeit
                                    in
                                        Y | y | YES | Yes | yes ) mkdir $github_base/Minecraft
                                                                  minecraft_install;;
                                        N | n | NO | No | no )    $cleverecho "That's too bad"
                                                                  exit;;
                                                        * )       $cleverecho "That's a Yes or No question really isn't it?"
                                                                  exit;;
                                esac  
                        fi
                        ;;
        esac
}

install_shc() {

	cd $github_base
	git clone https://github.com/neurobin/shc
	cd $github_base/shc
	./configure
	make
	make install
}

update_github() {

    echo -n "Do you wish to update all locally stored git repos? "
    read updategithubanswer
    if [ "$updategithubanswer" = "yes" ]
        then
	    cd $github_base/
            for f in `ls -d -- */`
                do 
			echo $f
			cd $f
			git pull
			cd $github_base
            done
fi	
}

update() {

    $cleverecho "Do you wish to run apt-get update?: "
    read aptgetupdate
    if [ "$aptgetupdate" = "yes" ]
        then
            sudo apt-get update
            $cleverecho "Do you now wish to download and install all upgraded packages? "
            read distupgrade
            if [ "$distupgrade" = "yes" ]
                then
                    sudo apt-get dist-upgrade -y
                else
                    $cleverecho "Ok, but you might want to run it later ..."
                    exit
            fi
        else
            $cleverecho "OK then, thanks!"
            exit
    fi

	sudo apt-get update
	sudo apt-get dist-upgrade -y
}

homebrewinstall() {

    $cleverecho "\nDo you wish to install homebrew? "
    read homebrewyesno
    case $homebrewyesno
        in
            yes) echo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	             echo "export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin:$HOME/bin" >> $HOME/.bashrc
                 $cleverecho "Now install gh? "
                 read installghyesno
                    case $installghyesno
                        in
                            yes) brew install gh
                                 ;;
                            no)  exit   
                                 ;;
                    esac
                 ;;
            no)  exit
                 ;;
    esac
}


main() {
    $cleverecho "Hello and welcome to Aleks' Private setup script!\n"
    $cleverecho "Let's see what damage we can cause with this, shall we?\n"
    dependencies
    homebrewinstall
}

help_menu() {
    $cleverecho "Aleks - Custom Menu\t\t\tHelp System\t\t`date`\n"
    echo help   menu here
    $cleverecho "main                update\n"
    $cleverecho "setup               dependencies\n"
    $cleverecho "minecraft_install   homebrewinstall\n" 
    $cleverecho "update_github       shc\n" 
    $cleverecho "help\n" 
}

module_template() {
    module_name="template"
    $cleverecho "Aleks - Custom Menu\t\t\t$module_name\t\t`date`\n"
    echo help   menu here
    $cleverecho "main                update\n"
    $cleverecho "setup               dependencies\n"
    $cleverecho "minecraft_install   homebrewinstall\n" 
    $cleverecho "update_github       shc\n" 
    $cleverecho "help\n" 
}

dep2() {

    if [ "$dep11" != "" ]
        then
            $cleverecho "\nChecking for $dep11\n"
            dpkg-query --show  "$dep11"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep11 found\n"
            else
                $cleverecho "$dep11" not found. Please approve installation.
                sudo apt-get install "$dep11"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep11 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #11 - Empty!\n"
fi

if [ "$dep12" != "" ]
 then
    $cleverecho "\nChecking for $dep12\n"
    dpkg-query --show  "$dep12"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep12 found\n"
            else
                $cleverecho "$dep12" not found. Please approve installation.
                sudo apt-get install "$dep12"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep12 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #12 - Empty!\n"
fi


if [ "$dep13" != "" ]
 then
    $cleverecho "\nChecking for $dep13\n"
    dpkg-query --show  "$dep13"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep13 found\n"
            else
                $cleverecho "$dep13" not found. Please approve installation.
                sudo apt-get install "$dep13"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep13 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #13 - Empty!\n"
fi


if [ "$dep14" != "" ]
 then
    $cleverecho "\nChecking for $dep14\n"
    dpkg-query --show  "$dep14"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep14 found\n"
            else
                $cleverecho "$dep14" not found. Please approve installation.
                sudo apt-get install "$dep14"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep14 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #14 - Empty!\n"
fi


if [ "$dep1" != "" ]
 then
    $cleverecho "\nChecking for $dep15\n"
    dpkg-query --show  "$dep15"
        if [ "$?" = "0" ];
            then
                $cleverecho "$dep15 found\n"
            else
                $cleverecho "$dep15" not found. Please approve installation.
                sudo apt-get install "$dep15"
        if [ "$?" = "0" ];
            then 
                $cleverecho "$dep15 installed successfully.\n"
        fi
    fi
 else
    $cleverecho "Dependencie #15 - Empty!\n"
fi


#if [ "$dep1" != "" ]
# then
#    $cleverecho "\nChecking for $dep1\n"
#
#    dpkg-query --show  "$dep1"
#        if [ "$?" = "0" ];
#            then
#                $cleverecho "$dep1 found\n"
#            else
#                $cleverecho "$dep1" not found. Please approve installation.
#                sudo apt-get install "$dep1"
#        if [ "$?" = "0" ];
#            then 
#                $cleverecho "$dep1 installed successfully.\n"
#        fi
#    fi
# else
#    $cleverecho "Dependencie #1 - Empty!\n"
#fi
}

davethebuskeruk() {
# 20210519 - Aleks script
# Create directories from list in file

#if [ ! -t 0 ]; then notify-send -u critical "Script must be run in a terminal - exiting !!!"; exit 1; fi    # Not in a terminal
## VARIABLES
# Define the various Directories

cleverecho="/bin/echo -e -n"

$cleverecho "Please Enter Security Key: "
read securitykey

if [ "$securitykey" = "test12345" ]
   then
      $cleverecho "Key Confirmed.... ";sleep 1
	    $cleverecho "Loading Script ...";sleep 1
	    $cleverecho " ...\n"
   else
	    $cleverecho "UX:ERROR:Invalid Security Key!"
	    exit;
fi

if [ -f $HOME/bin/update-branch.sh ]
   then
      echo "git: update-branch.sh exists..."
   else

cat <<EOF >> $HOME/bin/update-branch.sh
git branch -m main master
git fetch origin
git branch -u origin/master master
git remote set-head origin -a
EOF

fi

if [ -f $PWD/github.key ]
   then
     echo "Found Github Security Key ...";sleep 1
     echo "Loading Github Security Key ...";sleep 1
     source $PWD/github.key
   else
     echo "Github Security File not found!"
     exit 0;
fi

OriginDir=`pwd`
WorkingDir=$OriginDir"/Remote"
DrLst=$OriginDir"/dirlist.txt"
GitIs="Github/"
GitDr="Github"

## DEFINE FUNCTIONS

# GetList
function GetList (){
  while IFS= read -r DrName; do
    if [ ! -z "$DrName" ]
      then
        if [[ "$DrName" == "$GitIs"* ]]
          then
            IsGit "$DrName"
          else
            NotGit "$DrName"
        fi
    fi
  done < $DrLst
}

# NotGit
function NotGit (){
  echo "Creating directory --> $DrName"
  if [ ! -d "$DrName" ]
    then
      mkdir "$DrName" || { echo "Couldn't create $DrName - exiting"; exit 1; }
  fi
}

# IsGit
function IsGit (){
  echo "Creating GitHub subdirectory --> ${DrName#$GitIs}"
  if [ ! -d "$GitDr" ]
    then
      mkdir "$GitDr" || { echo "Couldn't create $GitDr - exiting"; exit 1; }
  fi
  if [ ! -d "$DrName" ]
    then
      mkdir "$GitDr/${DrName#$GitIs}" || { echo "Couldn't create $DrName - exiting"; exit 1; }
  fi
  cd "$DrName" || { echo "Couldn't enter $GitDr - exiting"; exit 1; }
  
  echo `pwd`
  
# `git init` || { echo ">  git init command returned error - exiting"; exit 1; }

  echo "Beginning git initialisation ..."; sleep 1; echo " ..."

    fname=`pwd`
    bsname=$(basename "$fname")
    echo $bsname

  git init || { echo ">  git init command returned error - exiting"; exit 1; } # Disabled for testing
  git remote add origin $github_url/$bsname || { echo ">  git remote add origin command returned error - exiting"; exit 1; } # Disabled for testing
  git pull origin master --allow-unrelated-histories || { echo ">  git pull origin master command returned error - exiting"; exit 1; } # Disabled for testing
 # git push --set-upstream origin master || { echo ">  git push --set-upstream command returned error - exiting"; exit 1; } # Disabled for testing

update-branch.sh

  cd "$WorkingDir"
}

## END OF FUNCTION DEFINITIONS

## START

# Startup echo
echo "Running Aleks.sh"
echo "======= ========"
echo "$WorkingDir"

if [ -z "$github_url" ]
   then
      $cleverecho "Github Security Key is: "; sleep 1
      $cleverecho "... "; sleep 1
      $cleverecho "NOT LOADED!\n"
   else
      $cleverecho "Github Security Key is: "; sleep 1
      $cleverecho "... "; sleep 1
      $cleverecho "Loaded!\n"
fi

echo "Press [RETURN] to start or [CTRL-c] to quit"
read

# Inital Tests
# Is Working Directory Accessible
cd "$WorkingDir" 2>/dev/null || {
  echo "Cannot access Working Directory $WorkingDir"
  cd "$OriginDir"
  exit 
}

# Does directory list file exist
if [ ! -s "$DrLst" ]
  then
    echo "$DrLst doesn't exist or is empty - Exiting, press [RETURN]"
    read
    exit 1 # No list file
fi
GetList
echo "-----"
echo "All done"
echo "Have a nice day ;-) @DaveTheBuskerUK"
## END
exit 0
}

function menu (){
case $1
    in
        dave)               davethebuskeruk;;
        check)				check_depend;;
        template) 			module_template;;
       	main)          		main;;
        update) 	    	update;;
        setup)        		setup;;
    	dependencies) 		dependencies;;
        minecraft_install) 	minecraft_install;;
    	homebrewinstall) 	homebrewinstall;;
    	update_github) 		update_github;;
		shc) 				install_shc;;
        help)               help_menu;;
	   *)		        	$cleverecho "This program requires command line arguments.\n"
                            $cleverecho "Please try again using help if unsure.\n\n";;
esac
}

menu