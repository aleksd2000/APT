
FINISH  bin/setup.sh
        Should use shc to compile the source code before I leave it.        
        
NEED TO Create a todo list for each server type that we have access to...

Oracle Linux        backup.aleksd2000.cc
Debian 10           aleksd2000.cc
Windows 10          LAPTOP

etc

also need to finish setup branch of Complete Repo, having a script to pull down the Complete repo once, 
and then pull down certain branches is a good idea I think.

Branch only command: 
                        git clone -b 'Branch Name' git@github.com:AleksD2000/Complete.git 'Location for it to go' --single-branch
                        git clone -b 'Branch Name' https://github.com/AleksD2000/Complete.git 'Location for it to go' --single-branch

Complete Repo to be installed here:

	Provider Name:		Server Name:			Address:
	
    oracle				backup					backup.aleksd2000.cc
    Linode				server01				server01.aleksd2000.cc

Specific Branches -

	Server Name:		Repo Name:			Branch Name:					Destination:

    server01 			complete.git		Minecraft-Server  				/Servers/Minecraft
	backup				complete.git		Minecraft-Server				/Servers/Minecraft
	
Need to also add support for hostname modification

Finish:

Date Added:			To do: 													Contingencies:										Date Completed:

09/01/2022			setup.sh: --dependencies check							Must be hostname specific
09/01/2022			setup.sh: --dependencies install						Must be hostname specific

09/01/2022			setup.sh: --configure setup								Must be hostname specific
09/01/2022			setup.sh: --configure networking						Must be hostname specific
	
09/01/2022			setup.sh: --help about
09/01/2022			setup.sh: --help copyright
	
11/01/2022			setup.sh --install-custom							Lots to do.... Dave is helping.
