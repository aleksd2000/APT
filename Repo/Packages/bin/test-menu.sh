#!/bin/bash

source files/data/configuration.ini
cleverecho="/bin/echo -e -n"
pending="$cleverecho \a\bThis is option is coming soon ... \a\b\n"
hold="sleep 5";

curlinstall() {
	curlnotsupported="$cleverecho \a\bInstallation by curl not supported yet\n"
	$curlnotsupported;$hold;
}


module-manager() {
	$cleverecho "(I)nstall Dependency, (M)odify Dependency, (D)elete Dependency [Q]uit\n";
	$cleverecho "Selection: "; 

	read subselection; 
		case $subselection in 
			INSTALL|Install|install|I|i) $cleverecho "Installing ${dep[1]}"; sleep 2; $cleverecho "... "; sleep 2; $cleverecho "... "; sleep 1;
				if [ "${depmethod[1]}" = "apt" ]; 
					then sudo ${depsource[1]} ${dep[1]} &> /dev/null;
						if [ "${dep[1]}" != "" ];  then dpkg-query --show  "${dep[1]}"; fi 
					read; 
				fi;  
				if [ "${depmethod[1]}" = "curl" ]; 
					then curlinstall; 
					$hold; read; 
				fi;;
			MODIFY|Modify|modify|M|m) 	 $pending;$hold;;	 
			DELETE|Delete|delete|D|d) 	 $pending;$hold;;
		esac
}

module-manager
