if [[ "$1" = "networking" && "$2" = "generate" && "$3" = "networking.service" ]];	then

generatedfile=setup/data/interfaces-test
rm $generatedfile
source setup/data/ipallocation.h

echo -e -n "Please Wait!!\n\n"
echo -e -n "Generating networking.service files \n\n"

echo -e -n "# Custom Networking Configuration File\n\n"            >>  $generatedfile

echo -e -n "auto lo\n"                                             >>	$generatedfile						
echo -e -n "iface lo inet loopback\n"              	               >>	$generatedfile
echo -e -n "source /etc/network/interfaces.d/*\n"                  >>	$generatedfile
echo -e -n "\n"                                                    >>	$generatedfile
echo -e -n "auto $defaultinterface\n"                              >>	$generatedfile
echo -e -n "\n"                                                    >>	$generatedfile
						
echo -e -n "# Main IPv4\n\n"                                       >>	$generatedfile
echo -e -n "iface $defaultinterface inet static\n"                 >>	$generatedfile
echo -e -n "\taddress $defaultipv4\n"                              >>	$generatedfile
echo -e -n "\tgateway $defaultipv4gateway\n"                       >>	$generatedfile
echo -e -n "\n"                                                    >>	$generatedfile

echo -e -n "# Secondary IPv4\n"                                    >>	$generatedfile
echo -e -n "\n"                                                    >>	$generatedfile
echo -e -n "\tiface $defaultinterface inet static\n"               >>	$generatedfile
echo -e -n "\taddress $secondaryipv4\n"                            >>	$generatedfile
echo -e -n "\n" 			                                       >>	$generatedfile

echo -e -n "# Main IPv6\n"                                         >>	$generatedfile
echo -e -n "iface eth0 inet6 static\n"                             >>	$generatedfile
echo -e -n "\taddress $defaultipv6\n"                              >>	$generatedfile
echo -e -n "\tgateway $ipv6defaultgateway\n"                       >>	$generatedfile
echo -e -n "\n"                                                    >>	$generatedfile

echo -e -n "# Adding additional IPv6 addresses:\n"                 >>	$generatedfile

	if [ "$ipv6hostname101" != "" ];	        then echo -e -n "\n"                                	>>	$generatedfile;	fi																
	if [ "$ipv6hostname101" != "" ];	        then echo -e -n "# First IPv6 Pool: \n"             	>>	$generatedfile;	fi
	if [ "$ipv6hostname101" != "" ];	        then echo -e -n "\n"                                	>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname101" != "" ];	        then echo -e -n "# $ipv6hostname101\n"             		>>	$generatedfile;	fi
	if [ "$ipv6address101" != "" ];	            then echo -e -n "Address $ipv6address101\n"         	>>	$generatedfile;	fi
	if [ "$ipv6hostname101" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname102" != "" ];	        then echo -e -n "# $ipv6hostname102\n"              	>>	$generatedfile;	fi
	if [ "$ipv6address102" != "" ];	            then echo -e -n "Address $ipv6address102\n"         	>>	$generatedfile;	fi
	if [ "$ipv6hostname102" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname103" != "" ];            then echo -e -n "# $ipv6hostname103\n"              	>>	$generatedfile;	fi
	if [ "$ipv6address103" != "" ];	            then echo -e -n "Address $ipv6address103\n"         	>>	$generatedfile;	fi
	if [ "$ipv6hostname103" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname104" != "" ];            then echo -e -n "# $ipv6hostname104\n"              	>>	$generatedfile; fi
	if [ "$ipv6address104" != "" ];             then echo -e -n "Address $ipv6address104\n"         	>>	$generatedfile; fi
	if [ "$ipv6hostname104" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname105" != "" ];            then echo -e -n "# $ipv6hostname105\n"              	>>	$generatedfile; fi
	if [ "$ipv6address105" != "" ];	            then echo -e -n "Address $ipv6address105\n"         	>>	$generatedfile; fi
	if [ "$ipv6hostname105" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname106" != "" ];	        then echo -e -n "# $ipv6hostname106\n"              	>>	$generatedfile; fi
	if [ "$ipv6address106" != "" ];	            then echo -e -n "Address $ipv6address106\n"         	>>	$generatedfile; fi
	if [ "$ipv6hostname106" != "" ];	    	then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname107" != "" ];           then echo -e -n "# $ipv6hostname107\n"              		>>	$generatedfile; fi
	if [ "$ipv6address107" != "" ];            then echo -e -n "Address $ipv6address107\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname107" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname108" != "" ];           then echo -e -n "# $ipv6hostname108\n"              		>>	$generatedfile; fi
	if [ "$ipv6address108" != "" ];            then echo -e -n "Address $ipv6address108\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname108" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname109" != "" ];           then echo -e -n "# $ipv6hostname109\n"              		>>	$generatedfile; fi
	if [ "$ipv6address109" != "" ];            then echo -e -n "Address $ipv6address109\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname109" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname110" != "" ];           then echo -e -n "# $ipv6hostname110\n"              		>>	$generatedfile; fi
	if [ "$ipv6address110" != "" ];            then echo -e -n "Address $ipv6address110\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname110" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname111" != "" ];           then echo -e -n "# $ipv6hostname111\n"              		>>	$generatedfile; fi
	if [ "$ipv6address111" != "" ];            then echo -e -n "Address $ipv6address111\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname111" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname112" != "" ];           then echo -e -n "# $ipv6hostname112\n"              		>>	$generatedfile; fi
	if [ "$ipv6address112" != "" ];            then echo -e -n "Address $ipv6address112\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname112" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname113" != "" ];           then echo -e -n "# $ipv6hostname113\n"              		>>	$generatedfile; fi
	if [ "$ipv6address113" != "" ];            then echo -e -n "Address $ipv6address113\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname113" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname114" != "" ];           then echo -e -n "# $ipv6hostname114\n"              		>>	$generatedfile; fi
	if [ "$ipv6address114" != "" ];            then echo -e -n "Address $ipv6address114\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname114" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname115" != "" ];           then echo -e -n "# $ipv6hostname115\n"              		>>	$generatedfile; fi
	if [ "$ipv6address115" != "" ];            then echo -e -n "Address $ipv6address115\n"         		>>	$generatedfile; fi
	if [ "$ipv6hostname115" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname201" != "" ];	       then echo -e -n "#Second IPv6 Pool: \n"             		>>	$generatedfile;	fi
	if [ "$ipv6hostname201" != "" ];	       then echo -e -n " \n"                               		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname201" != "" ];	       then echo -e -n "#$ipv6hostname201\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address201" != "" ];	           then echo -e -n "Address $ipv6address201\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname201" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname202" != "" ];	       then echo -e -n "#$ipv6hostname202\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address202" != "" ];	           then echo -e -n "Address $ipv6address202\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname202" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname203" != "" ];	       then echo -e -n "#$ipv6hostname203\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address203" != "" ];	           then echo -e -n "Address $ipv6address203\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname203" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname204" != "" ];	       then echo -e -n "#$ipv6hostname204\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address204" != "" ];	           then echo -e -n "Address $ipv6address204\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname204" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname205" != "" ];	       then echo -e -n "#$ipv6hostname205\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address205" != "" ];	           then echo -e -n "Address $ipv6address205\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname205" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname206" != "" ];	       then echo -e -n "#$ipv6hostname206\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address206" != "" ];	           then echo -e -n "Address $ipv6address206\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname206" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname207" != "" ];	       then echo -e -n "#$ipv6hostname207\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address207" != "" ];	           then echo -e -n "Address $ipv6address207\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname207" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname208" != "" ];	       then echo -e -n "#$ipv6hostname208\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address208" != "" ];	           then echo -e -n "Address $ipv6address208\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname208" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname209" != "" ];	       then echo -e -n "#$ipv6hostname209\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address209" != "" ];	           then echo -e -n "Address $ipv6address209\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname209" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname210" != "" ];	       then echo -e -n "#$ipv6hostname210\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address210" != "" ];	           then echo -e -n "Address $ipv6address210\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname210" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname211" != "" ];	       then echo -e -n "#$ipv6hostname211\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address211" != "" ];	           then echo -e -n "Address $ipv6address211\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname211" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname212" != "" ];	       then echo -e -n "#$ipv6hostname212\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address212" != "" ];	           then echo -e -n "Address $ipv6address212\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname212" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname213" != "" ];	       then echo -e -n "#$ipv6hostname213\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address213" != "" ];            then echo -e -n "Address $ipv6address213\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname213" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname214" != "" ];	       then echo -e -n "#$ipv6hostname214\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address214" != "" ];            then echo -e -n "Address $ipv6address214\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname214" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname215" != "" ];	       then echo -e -n "#$ipv6hostname215\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address215" != "" ];            then echo -e -n "Address $ipv6address215\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname215" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname301" != "" ];	       then echo -e -n "#Third IPv6 Pool: \n"             		>>	$generatedfile;	fi
	if [ "$ipv6hostname301" != "" ];	       then echo -e -n "\n"                               		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname301" != "" ];	       then echo -e -n "#$ipv6hostname301\n"             		>>	$generatedfile;	fi
	if [ "$ipv6address301" != "" ];            then echo -e -n "Address $ipv6address301\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname301" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname302" != "" ];	       then echo -e -n "#$ipv6hostname302\n"             		>>	$generatedfile;	fi
	if [ "$ipv6address302" != "" ];            then echo -e -n "Address $ipv6address302\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname302" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname303" != "" ];	       then echo -e -n "#$ipv6hostname303\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address303" != "" ];            then echo -e -n "Address $ipv6address303\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname303" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname304" != "" ];	       then echo -e -n "#$ipv6hostname304\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address304" != "" ];            then echo -e -n "Address $ipv6address304\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname304" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname305" != "" ];	       then echo -e -n "#$ipv6hostname305\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address305" != "" ];            then echo -e -n "Address $ipv6address305\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname305" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname306" != "" ];	       then echo -e -n "#$ipv6hostname306\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address306" != "" ];            then echo -e -n "Address $ipv6address306\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname306" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname307" != "" ];	       then echo -e -n "#$ipv6hostname307\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address307" != "" ];            then echo -e -n "Address $ipv6address307\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname307" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname308" != "" ];	       then echo -e -n "#$ipv6hostname308\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address308" != "" ];            then echo -e -n "Address $ipv6address308\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname308" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname309" != "" ];	       then echo -e -n "#$ipv6hostname309\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address309" != "" ];            then echo -e -n "Address $ipv6address309\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname309" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname310" != "" ];	       then echo -e -n "#$ipv6hostname310\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address310" != "" ];            then echo -e -n "Address $ipv6address310\n"        		>>	$generatedfile;	fi
	if [ "$ipv6hostname310" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname311" != "" ];	       then echo -e -n "#$ipv6hostname311\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address311" != "" ];            then echo -e -n "Address $ipv6address311\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname311" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname312" != "" ];	       then echo -e -n "#$ipv6hostname312\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address312" != "" ];            then echo -e -n "Address $ipv6address312\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname312" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname313" != "" ];	       then echo -e -n "#$ipv6hostname313\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address313" != "" ];            then echo -e -n "Address $ipv6address313\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname313" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname314" != "" ];	       then echo -e -n "#$ipv6hostname314\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address314" != "" ];            then echo -e -n "Address $ipv6address314\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname314" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname315" != "" ];	       then echo -e -n "#$ipv6hostname315\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address315" != "" ];            then echo -e -n "Address $ipv6address315\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname315" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname401" != "" ];	       then echo -e -n "#Fourth IPv6 Pool: \n"             		>>	$generatedfile;	fi
	if [ "$ipv6hostname401" != "" ];	       then echo -e -n " \n"                               		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname401" != "" ];	       then echo -e -n "#$ipv6hostname401\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address401" != "" ];            then echo -e -n "Address $ipv6address401\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname401" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname402" != "" ];	       then echo -e -n "#$ipv6hostname402\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address402" != "" ];            then echo -e -n "Address $ipv6address402\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname402" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname403" != "" ];	       then echo -e -n "#$ipv6hostname403\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address403" != "" ];            then echo -e -n "Address $ipv6address403\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname403" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname404" != "" ];	       then echo -e -n "#$ipv6hostname404\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address404" != "" ];            then echo -e -n "Address $ipv6address404\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname404" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname405" != "" ];	       then echo -e -n "#$ipv6hostname405\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address405" != "" ];            then echo -e -n "Address $ipv6address405\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname405" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname406" != "" ];	       then echo -e -n "#$ipv6hostname406\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address406" != "" ];            then echo -e -n "Address $ipv6address406\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname406" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname407" != "" ];	       then echo -e -n "#$ipv6hostname407\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address407" != "" ];            then echo -e -n "Address $ipv6address407\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname407" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname408" != "" ];	       then echo -e -n "#$ipv6hostname408\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address408" != "" ];            then echo -e -n "Address $ipv6address408\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname408" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname409" != "" ];	       then echo -e -n "#$ipv6hostname409\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address409" != "" ];            then echo -e -n "Address $ipv6address409\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname409" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname410" != "" ];	       then echo -e -n "#$ipv6hostname410\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address410" != "" ];            then echo -e -n "Address $ipv6address410\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname410" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname411" != "" ];	       then echo -e -n "#$ipv6hostname411\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address411" != "" ];            then echo -e -n "Address $ipv6address411\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname411" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname412" != "" ];	       then echo -e -n "#$ipv6hostname412\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address412" != "" ];            then echo -e -n "Address $ipv6address412\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname412" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname413" != "" ];	       then echo -e -n "#$ipv6hostname413\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address413" != "" ];            then echo -e -n "Address $ipv6address413\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname413" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname414" != "" ];	       then echo -e -n "#$ipv6hostname414\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address414" != "" ];            then echo -e -n "Address $ipv6address414\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname414" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname415" != "" ];	       then echo -e -n "#$ipv6hostname415\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address415" != "" ];            then echo -e -n "Address $ipv6address415\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname415" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname501" != "" ];	       then echo -e -n "#Fifth IPv6 Pool: \n"              		>>	$generatedfile;	fi
	if [ "$ipv6hostname501" != "" ];	       then echo -e -n " \n"                               		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname501" != "" ];	       then echo -e -n "#$ipv6hostname501\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address501" != "" ];            then echo -e -n "Address $ipv6address501\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname501" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname502" != "" ];	       then echo -e -n "#$ipv6hostname502\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address502" != "" ];            then echo -e -n "Address $ipv6address502\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname502" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname503" != "" ];	       then echo -e -n "#$ipv6hostname503\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address503" != "" ];            then echo -e -n "Address $ipv6address503\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname503" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname504" != "" ];	       then echo -e -n "#$ipv6hostname504\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address504" != "" ];            then echo -e -n "Address $ipv6address504\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname504" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname505" != "" ];	       then echo -e -n "#$ipv6hostname505\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address505" != "" ];            then echo -e -n "Address $ipv6address505\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname505" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname506" != "" ];	       then echo -e -n "#$ipv6hostname506\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address506" != "" ];            then echo -e -n "Address $ipv6address506\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname506" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname507" != "" ];	       then echo -e -n "#$ipv6hostname507\n"              		>>	$generatedfile;	fi
	if [ "$ipv6address507" != "" ];            then echo -e -n "Address $ipv6address507\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname507" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname508" != "" ];	       then echo -e -n "#$ipv6hostname508\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address508" != "" ];            then echo -e -n "Address $ipv6address508\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname508" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname509" != "" ];	       then echo -e -n "#$ipv6hostname509\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address509" != "" ];            then echo -e -n "Address $ipv6address509\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname509" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname510" != "" ];	       then echo -e -n "#$ipv6hostname510\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address510" != "" ];            then echo -e -n "Address $ipv6address510\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname510" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname511" != "" ];	       then echo -e -n "#$ipv6hostname511\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address511" != "" ];            then echo -e -n "Address $ipv6address511\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname511" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

	if [ "$ipv6hostname512" != "" ];	       then echo -e -n "#$ipv6hostname512\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address512" != "" ];            then echo -e -n "Address $ipv6address512\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname512" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname513" != "" ];	       then echo -e -n "#$ipv6hostname513\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address513" != "" ];            then echo -e -n "Address $ipv6address513\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname513" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname514" != "" ];	       then echo -e -n "#$ipv6hostname514\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address514" != "" ];            then echo -e -n "Address $ipv6address514\n\n"       		>>	$generatedfile;	fi
	if [ "$ipv6hostname514" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi
																	
	if [ "$ipv6hostname515" != "" ];	       then echo -e -n "#$ipv6hostname515\n"               		>>	$generatedfile;	fi
	if [ "$ipv6address515" != "" ];            then echo -e -n "Address $ipv6address515\n"         		>>	$generatedfile;	fi
	if [ "$ipv6hostname515" != "" ];	       then echo -e -n "Gateway $ipv6defaultgateway\n\n"  		>>	$generatedfile;	fi

fi