#!/bin/bash

if [ "$USER" != "aleks" ]; then
    echo -e -n "You are not authorised to use this program!\n"
    sleep 5000

else 

# A simple script by AleksD2000

if [ "$1" = "" ]; then
    echo -e -n "Command line arguments required\n"
    echo -e -n "Try $0 help\n\n"
fi

if [ "$1" = "help" ]; then
    echo -e -n "Help Menu\n\n"
    echo -e -n "Options available: \n\n"
    echo -e -n "\t help - This help menu\n"
    echo -e -n "\t install - Try $0 install list\n\n"
    echo -e -n "\t networking - Try $0 networking help\n\n"
    echo -e -n "\t about\n\n"
fi

if [[ "$1" = "help" && "$2" = "about" ]]; then
    echo -e -n "\n"
    echo -e -n "\t This script wass written by AleksD2000\n"
    echo -e -n "\t Distributing this script, or attempting to modify it in any way\n"
    echo -e -n "\t is strictly not allowed!\n"
fi

if [[ "$1" = "networking" && "$2" = "help" ]]; then
    echo -e -n "configure -- Coming soon!!\n\n"
    echo -e -n "help Coming soon!!\n\n"
    echo -e -n "install Coming soon!!\n\n"
fi

if [[ "$1" = "networking" && "$2" = "install" ]]; then
    echo -e -n "Coming soon!!\n\n"
# Disable networking.service
# systemctl disable --now networking.service

# Enable networkd
# systemctl enable --now systemd-networkd.service

fi

if [[ "$1" = "networking" && "$2" = "configure" ]]; then
    echo -e -n "Coming soon!!\n\n"

#[Match]
#Name=eth0

#[Network]
# Primary IP Address (IPv4)
#Address=176.58.103.28/24
#Address=139.162.201.244/24
#Gateway=176.58.103.1
#Address=fe80::f03c:92ff:fe1d:d473/64

# Secondary IP Address (IPv4)
#Address=139.162.201.244/24

# Gateway Address
#Gateway=176.58.103.1

# Ipv6 Link Address
#Address=2a01:7e00::f03c:92ff:fe1d:d473/64
#Gateway=fe80::1

# Customer IPv6 Pool:

# customers.aleksd2000.cc

#Address=2a01:7e00:e000:01ed::1/64
#Gateway=fe80::1

# Private IPv6 Pool:

#Address=2a01:7e00:e000:022c::1/64
#Gateway=fe80::1

# www.aleksd2000.cc
#Address=2a01:7e00:e000:00bd::1/64 
#Gateway=fe80::1

# ns1.aleksd2000.cc
#Address=2a01:7e00:e000:00bd::7/64
#Gateway=fe80::1

# ns2.aleksd2000.cc
#Address=2a01:7e00:e000:00bd::8/64
#Gateway=fe80::1
fi

if [[ "$1" = "networking" && "$2" = "show" ]]; then

source setup/ipallocation.h

    echo -e -n "Coming soon!!\n\n"
    echo -e -n "\tThis is only a prototype interface ...";sleep 5;/bin/clear
    echo -e -n "Network Management Screen: $HOSTNAME\n"
    echo -e -n "Default Interface: $defaultinterface\n"
    echo -e -n "Default IPv4 Primary Address: $defaultipv4\t\tDefault IPv4 Gateway: $defaultipv4gateway\n"
    echo -e -n "Secondary IPv4 Address: $secondaryipv4\t\tDefault IPv4 Gateway: $defaultipv4gateway\n"
    echo -e -n "IPv6:\n"
    if [ "$ipv6pool01" != "" ]; then
        echo -e -n "\tPool 1: $ipv6pool01\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool02" != "" ]; then
    echo -e -n "\tPool 2: $ipv6pool02\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool03" != "" ]; then
        echo -e -n "\tPool 3: $ipv6pool03\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool04" != "" ]; then
        echo -e -n "\tPool 4: $ipv6pool04\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool05" != "" ]; then
        echo -e -n "\tPool 5: $ipv6pool05\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool06" != "" ]; then
        echo -e -n "\tPool 6: $ipv6pool06\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool07" != "" ]; then
        echo -e -n "\tPool 7: $ipv6pool07\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool08" != "" ]; then
        echo -e -n "\tPool 8: $ipv6pool08\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool09" != "" ]; then
        echo -e -n "\tPool 9: $ipv6pool09\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    if [ "$ipv6pool10" != "" ]; then
        echo -e -n "\tPool 10: $ipv6pool10\t\tDefault Gateway: $ipv6defaultgateway\n"
    fi
    echo -e -n "\n"
    echo -e -n "Specific IPv6 Hosts:\n"
    echo -e -n "IPv6 Pool One: \n"
    if [[ "$ipv6hostname101" && "$ipv6address101" != "" ]]; then
        echo -e -n "\t$ipv6hostname101 \t\t - $ipv6address101\n"
    fi
    if [[ "$ipv6hostname102" && "$ipv6address102" != "" ]]; then
        echo -e -n "\t$ipv6hostname102 \t\t\t - $ipv6address102\n"
    fi
    if [[ "$ipv6hostname103" && "$ipv6address103" != "" ]]; then    
        echo -e -n "\t$ipv6hostname103 \t\t\t - $ipv6address103\n"
    fi
    if [[ "$ipv6hostname104" && "$ipv6address104" != "" ]]; then
        echo -e -n "\t$ipv6hostname104 \t\t\t - $ipv6address104\n"
    fi
    if [[ "$ipv6hostname105" && "$ipv6address105" != "" ]]; then
        echo -e -n "\t$ipv6hostname105 \t\t\t - $ipv6address105\n"
    fi
    if [[ "$ipv6hostname106" && "$ipv6address106" != "" ]]; then    
        echo -e -n "\t$ipv6hostname106 \t\t\t - $ipv6address106\n"
    fi
    if [[ "$ipv6hostname107" && "$ipv6address107" != "" ]]; then    
        echo -e -n "\t$ipv6hostname107 \t\t\t - $ipv6address107\n"
    fi
    if [[ "$ipv6hostname108" && "$ipv6address108" != "" ]]; then    
        echo -e -n "\t$ipv6hostname108 \t\t\t - $ipv6address108\n"
    fi
    if [[ "$ipv6hostname109" && "$ipv6address109" != "" ]]; then    
        echo -e -n "\t$ipv6hostname109 \t\t\t - $ipv6address109\n"
    fi
    if [[ "$ipv6hostname110" && "$ipv6address110" != "" ]]; then    
        echo -e -n "\t$ipv6hostname110 \t\t\t - $ipv6address110\n"
    fi
    if [[ "$ipv6hostname111" && "$ipv6address111" != "" ]]; then    
        echo -e -n "\t$ipv6hostname111 \t\t\t - $ipv6address111\n"
    fi
    if [[ "$ipv6hostname112" && "$ipv6address112" != "" ]]; then    
        echo -e -n "\t$ipv6hostname112 \t\t\t - $ipv6address112\n"
    fi
    if [[ "$ipv6hostname113" && "$ipv6address113" != "" ]]; then    
        echo -e -n "\t$ipv6hostname113 \t\t\t - $ipv6address113\n"
    fi
    if [[ "$ipv6hostname114" && "$ipv6address114" != "" ]]; then    
        echo -e -n "\t$ipv6hostname114 \t\t\t - $ipv6address114\n"
    fi
    if [[ "$ipv6hostname115" && "$ipv6address115" != "" ]]; then    
        echo -e -n "\t$ipv6hostname115 \t\t\t - $ipv6address115\n"
    fi    
echo -e -n "\n"
echo -e -n "IPv6 Pool Two:\n"
    if [[ "$ipv6hostname201" && "$ipv6address201" != "" ]]; then
        echo -e -n "\t$ipv6hostname201 \t\t\t - $ipv6address201\n"
    fi
    if [[ "$ipv6hostname202" && "$ipv6address202" != "" ]]; then
        echo -e -n "\t$ipv6hostname202 \t\t\t - $ipv6address202\n"
    fi
    if [[ "$ipv6hostname203" && "$ipv6address203" != "" ]]; then
        echo -e -n "\t$ipv6hostname203 \t\t\t - $ipv6address203\n"
    fi
    if [[ "$ipv6hostname204" && "$ipv6address204" != "" ]]; then
        echo -e -n "\t$ipv6hostname204 \t - $ipv6address204\n"
    fi
    if [[ "$ipv6hostname205" && "$ipv6address205" != "" ]]; then
        echo -e -n "\t$ipv6hostname205 \t\t\t - $ipv6address205\n"
    fi
    if [[ "$ipv6hostname206" && "$ipv6address206" != "" ]]; then
        echo -e -n "\t$ipv6hostname206 \t\t\t - $ipv6address206\n"
    fi
    if [[ "$ipv6hostname207" && "$ipv6address207" != "" ]]; then
        echo -e -n "\t$ipv6hostname207 \t\t\t - $ipv6address207\n"
    fi
    if [[ "$ipv6hostname208" && "$ipv6address208" != "" ]]; then
        echo -e -n "\t$ipv6hostname208 \t\t\t - $ipv6address208\n"
    fi
    if [[ "$ipv6hostname209" && "$ipv6address209" != "" ]]; then
        echo -e -n "\t$ipv6hostname209 \t\t\t - $ipv6address209\n"
    fi
    if [[ "$ipv6hostname210" && "$ipv6address210" != "" ]]; then
        echo -e -n "\t$ipv6hostname210 \t\t\t - $ipv6address210\n"
    fi
    if [[ "$ipv6hostname211" && "$ipv6address211" != "" ]]; then
        echo -e -n "\t$ipv6hostname211 \t\t\t - $ipv6address211\n"
    fi
    if [[ "$ipv6hostname212" && "$ipv6address212" != "" ]]; then
        echo -e -n "\t$ipv6hostname212 \t\t\t - $ipv6address212\n"
    fi
    if [[ "$ipv6hostname213" && "$ipv6address213" != "" ]]; then
        echo -e -n "\t$ipv6hostname213 \t\t\t - $ipv6address213\n"
    fi
    if [[ "$ipv6hostname214" && "$ipv6address214" != "" ]]; then
        echo -e -n "\t$ipv6hostname214 \t\t\t - $ipv6address214\n"
    fi
    if [[ "$ipv6hostname215" && "$ipv6address215" != "" ]]; then
        echo -e -n "\t$ipv6hostname215 \t\t\t - $ipv6address215\n"
    fi

echo -e -n "\n"
echo -e -n "IPv6 Pool Three:\n"
    if [[ "$ipv6hostname301" && "$ipv6address301" != "" ]]; then
        echo -e -n "\t$ipv6hostname301 \t\t\t - $ipv6address301\n"
    fi
    if [[ "$ipv6hostname302" && "$ipv6address302" != "" ]]; then
        echo -e -n "\t$ipv6hostname302 \t\t\t - $ipv6address302\n"
    fi
    if [[ "$ipv6hostname303" && "$ipv6address303" != "" ]]; then
        echo -e -n "\t$ipv6hostname303 \t\t\t - $ipv6address303\n"
    fi
    if [[ "$ipv6hostname304" && "$ipv6address304" != "" ]]; then
        echo -e -n "\t$ipv6hostname304 \t\t\t - $ipv6address304\n"
    fi
    if [[ "$ipv6hostname305" && "$ipv6address305" != "" ]]; then
        echo -e -n "\t$ipv6hostname305 \t\t\t - $ipv6address305\n"
    fi
    if [[ "$ipv6hostname306" && "$ipv6address306" != "" ]]; then
        echo -e -n "\t$ipv6hostname306 \t\t\t - $ipv6address306\n"
    fi
    if [[ "$ipv6hostname307" && "$ipv6address307" != "" ]]; then
        echo -e -n "\t$ipv6hostname307 \t\t\t - $ipv6address307\n"
    fi
    if [[ "$ipv6hostname308" && "$ipv6address308" != "" ]]; then
        echo -e -n "\t$ipv6hostname308 \t\t\t - $ipv6address308\n"
    fi
    if [[ "$ipv6hostname309" && "$ipv6address309" != "" ]]; then
        echo -e -n "\t$ipv6hostname309 \t\t\t - $ipv6address309\n"
    fi
    if [[ "$ipv6hostname310" && "$ipv6address310" != "" ]]; then
        echo -e -n "\t$ipv6hostname310 \t\t\t - $ipv6address310\n"
    fi
    if [[ "$ipv6hostname311" && "$ipv6address311" != "" ]]; then
        echo -e -n "\t$ipv6hostname311 \t\t\t - $ipv6address311\n"
    fi
    if [[ "$ipv6hostname312" && "$ipv6address312" != "" ]]; then
        echo -e -n "\t$ipv6hostname312 \t\t\t - $ipv6address312\n"
    fi
    if [[ "$ipv6hostname313" && "$ipv6address313" != "" ]]; then
        echo -e -n "\t$ipv6hostname313 \t\t\t - $ipv6address313\n"
    fi
    if [[ "$ipv6hostname314" && "$ipv6address314" != "" ]]; then
        echo -e -n "\t$ipv6hostname314 \t\t\t - $ipv6address314\n"
    fi
    if [[ "$ipv6hostname315" && "$ipv6address315" != "" ]]; then
        echo -e -n "\t$ipv6hostname315 \t\t\t - $ipv6address315\n"
    fi

echo -e -n "\n"
echo -e -n "IPv6 Pool Four:\n"
    if [[ "$ipv6hostname401" && "$ipv6address401" != "" ]]; then
        echo -e -n "\t$ipv6hostname401 \t\t\t - $ipv6address401\n"
    fi
    if [[ "$ipv6hostname402" && "$ipv6address402" != "" ]]; then
        echo -e -n "\t$ipv6hostname402 \t\t\t - $ipv6address402\n"
    fi
    if [[ "$ipv6hostname403" && "$ipv6address403" != "" ]]; then
        echo -e -n "\t$ipv6hostname403 \t\t\t - $ipv6address403\n"
    fi
    if [[ "$ipv6hostname404" && "$ipv6address404" != "" ]]; then
        echo -e -n "\t$ipv6hostname404 \t\t\t - $ipv6address404\n"
    fi
    if [[ "$ipv6hostname405" && "$ipv6address405" != "" ]]; then
        echo -e -n "\t$ipv6hostname405 \t\t\t - $ipv6address405\n"
    fi
    if [[ "$ipv6hostname406" && "$ipv6address406" != "" ]]; then
        echo -e -n "\t$ipv6hostname406 \t\t\t - $ipv6address406\n"
    fi
    if [[ "$ipv6hostname407" && "$ipv6address407" != "" ]]; then
        echo -e -n "\t$ipv6hostname407 \t\t\t - $ipv6address407\n"
    fi
    if [[ "$ipv6hostname408" && "$ipv6address408" != "" ]]; then
        echo -e -n "\t$ipv6hostname408 \t\t\t - $ipv6address408\n"
    fi
    if [[ "$ipv6hostname409" && "$ipv6address409" != "" ]]; then
        echo -e -n "\t$ipv6hostname409 \t\t\t - $ipv6address409\n"
    fi
    if [[ "$ipv6hostname410" && "$ipv6address410" != "" ]]; then
        echo -e -n "\t$ipv6hostname410 \t\t\t - $ipv6address410\n"
    fi
    if [[ "$ipv6hostname411" && "$ipv6address411" != "" ]]; then
        echo -e -n "\t$ipv6hostname411 \t\t\t - $ipv6address411\n"
    fi
    if [[ "$ipv6hostname412" && "$ipv6address412" != "" ]]; then
        echo -e -n "\t$ipv6hostname412 \t\t\t - $ipv6address412\n"
    fi
    if [[ "$ipv6hostname413" && "$ipv6address413" != "" ]]; then
        echo -e -n "\t$ipv6hostname413 \t\t\t - $ipv6address413\n"
    fi
    if [[ "$ipv6hostname414" && "$ipv6address414" != "" ]]; then
        echo -e -n "\t$ipv6hostname414 \t\t\t - $ipv6address414\n"
    fi
    if [[ "$ipv6hostname415" && "$ipv6address415" != "" ]]; then
        echo -e -n "\t$ipv6hostname415 \t\t\t - $ipv6address415\n"
    fi
fi

if [[ "$1" = "networking" && "$2" = "generate" ]]; then
generatedfile=setup/eth0.network-generated
source setup/ipallocation.h
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
 ipv6template() {
 
    echo -e -n "\n"                                                                                 >> $generatedfile
    echo -e -n "\n"                                                                                 >> $generatedfile

    echo -e -n "# Customer IPv6 Pool Template:\n"                                                      >> $generatedfile
    echo -e -n "\n"                                                                                 >> $generatedfile

    if [ "$ipv6hostname01" != "" ];        then    echo -e -n "# $ipv6hostname01\n"               >> $generatedfile; fi
    if [ "$ipv6address01" != "" ];         then    echo -e -n "Address=$ipv6address01\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway01" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway01"     >> $generatedfile; fi

    if [ "$ipv6hostname02" != "" ];        then    echo -e -n "# $ipv6hostname02\n"               >> $generatedfile; fi
    if [ "$ipv6address02" != "" ];         then    echo -e -n "Address=$ipv6address02\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway02" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway02"     >> $generatedfile; fi

    if [ "$ipv6hostname03" != "" ];        then    echo -e -n "# $ipv6hostname03\n"               >> $generatedfile; fi
    if [ "$ipv6address03" != "" ];         then    echo -e -n "Address=$ipv6address03\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway03" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway03"     >> $generatedfile; fi

    if [ "$ipv6hostname04" != "" ];        then    echo -e -n "# $ipv6hostname04\n"               >> $generatedfile; fi
    if [ "$ipv6address04" != "" ];         then    echo -e -n "Address=$ipv6address04\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway04" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway04"     >> $generatedfile; fi

    if [ "$ipv6hostname05" != "" ];        then    echo -e -n "# $ipv6hostname05\n"               >> $generatedfile; fi
    if [ "$ipv6address05" != "" ];         then    echo -e -n "Address=$ipv6address05\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway05" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway05"     >> $generatedfile; fi

    if [ "$ipv6hostname06" != "" ];        then    echo -e -n "# $ipv6hostname06\n"               >> $generatedfile; fi
    if [ "$ipv6address06" != "" ];         then    echo -e -n "Address=$ipv6address06\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway06" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway06"     >> $generatedfile; fi

    if [ "$ipv6hostname07" != "" ];        then    echo -e -n "# $ipv6hostname07\n"               >> $generatedfile; fi
    if [ "$ipv6address07" != "" ];         then    echo -e -n "Address=$ipv6address07\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway07" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway07"     >> $generatedfile; fi

    if [ "$ipv6hostname08" != "" ];        then    echo -e -n "# $ipv6hostname08\n"               >> $generatedfile; fi
    if [ "$ipv6address08" != "" ];         then    echo -e -n "Address=$ipv6address08\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway08" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway08"     >> $generatedfile; fi

    if [ "$ipv6hostname09" != "" ];        then    echo -e -n "# $ipv6hostname09\n"               >> $generatedfile; fi
    if [ "$ipv6address09" != "" ];         then    echo -e -n "Address=$ipv6address09\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway09" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway09"     >> $generatedfile; fi

    if [ "$ipv6hostname10" != "" ];        then    echo -e -n "# $ipv6hostname10\n"               >> $generatedfile; fi
    if [ "$ipv6address10" != "" ];         then    echo -e -n "Address=$ipv6address10\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway10" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway10"     >> $generatedfile; fi

    if [ "$ipv6hostname11" != "" ];        then    echo -e -n "# $ipv6hostname11\n"               >> $generatedfile; fi
    if [ "$ipv6address11" != "" ];         then    echo -e -n "Address=$ipv6address11\n"           >> $generatedfile; fi
    if [ "$ipv6defaultgateway11" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway11"     >> $generatedfile; fi
    
    if [ "$ipv6hostname12" != "" ];        then    echo -e -n "# $ipv6hostname12\n"                             >> $generatedfile; fi
    if [ "$ipv6address12" != "" ];         then    echo -e -n "Address=$ipv6address12\n"                        >> $generatedfile; fi
    if [ "$ipv6defaultgateway12" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway12"                   >> $generatedfile; fi
    
    if [ "$ipv6hostname13" != "" ];        then    echo -e -n "# $ipv6hostname13\n"                             >> $generatedfile; fi
    if [ "$ipv6address13" != "" ];         then    echo -e -n "Address=$ipv6address13\n"                        >> $generatedfile; fi
    if [ "$ipv6defaultgateway13" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway13"                   >> $generatedfile; fi
    
    if [ "$ipv6hostname14" != "" ];        then    echo -e -n "# $ipv6hostname14\n"                             >> $generatedfile; fi
    if [ "$ipv6address14" != "" ];         then    echo -e -n "Address=$ipv6address14\n"                        >> $generatedfile; fi
    if [ "$ipv6defaultgateway14" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway14"                   >> $generatedfile; fi
    
    if [ "$ipv6hostname15" != "" ];        then    echo -e -n "# $ipv6hostname15\n"                             >> $generatedfile; fi
    if [ "$ipv6address15" != "" ];         then    echo -e -n "Address=$ipv6address15\n"                        >> $generatedfile; fi
    if [ "$ipv6defaultgateway15" != "" ];  then    echo -e -n "Gateway=$ipv6defaultgateway15"                   >> $generatedfile; fi
}
fi

if [[ "$1" = "networking" && "$2" = "install" ]]; then
    echo -e -n "Are you totally sure that you want to do this? (Yes or No): "
    read yesorno
    if [ "$yesorno" = "Yes" ]; then
	generatedfile=setup/eth0.network-generated
	cp $generatedfile /etc/systemd/network/eth0.network
	sudo systemctl restart systemd-networkd.service
    else
    echo -e -n "Network installation aborted!\n"
    fi
fi

if [[ "$1" = "install" && "$2" = "list" ]]; then
    echo -e -n "Required Packages for Installation: \n\n"
    echo -e -n "\t shc\n"
    echo -e -n "\t gpg\n"
    echo -e -n "\t git\n"
    echo -e -n "\t gh\n"
    echo -e -n "\t fail2ban\n"
    echo -e -n "\t java\n\n"
fi

if [[ "$1" = "install" && "$2" = "shc" ]]; then
    sudo apt update
    sudo apt install shc
fi

if [[ "$1" = "install" && "$2" = "gpg" ]]; then
    sudo apt update
    sudo apt install gpg
fi


if [[ "$1" = "install" && "$2" = "git" ]]; then
    sudo apt update
    sudo apt install git
fi

if [[ "$1" = "install" && "$2" = "fail2ban" ]]; then
    sudo apt update
    sudo apt install fail2ban
    echo -e -n "Fail2ban has been downloaded and installed.\n"
    sudo systemctl stop fail2ban
    echo -e -n "Fail2ban: Shutdown Complete, please configure!\n\n"
fi

if [[ "$1" = "install" && "$2" = "java" ]]; then
    echo "sudo echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu focal main" >> /etc/apt/sources.list.d/linuxuprising-java.list"
    echo sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
    echo sudo apt update
    echo sudo apt install oracle-java17-installer --install-recommends
fi


if [[ "$1" = "install" && "$2" = "gh" ]]; then
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" |
	sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y
fi

if [[ "$1" = "setup" && "gh" ]]; then
    gh auth login
    gh auth status
fi

if [[ "$1" = "gh" && "$2" = "import" ]]; then
    until [ -d "/Servers/Complete" ]; do
        if [ -z "/Servers/" ]; then
            echo -e -n "Directory /Servers found...\n"
            echo -e -n "Skipping\n"
        else
            echo -e -n "Directory /Servers not found...\n"
            echo -e -n "Creating Directory\n"
            sudo mkdir /Servers
            echo -e -n "Directory Created!\n\n"
        fi
  
        if [ -z "/Servers/Minecraft" ]; then
            echo -e -n "Directory /Servers/Minecraft found...\n"
            echo -e -n "Skipping\n"
            else
            echo -e -n "Directory /Servers/Minecraft not found...\n"
            echo -e -n "Creating Directory\n"
            sudo mkdir /Servers/Minecraft
            echo -e -n "Directory Created!\n\n"
        fi

        if [ -z "/Servers/Complete" ]; then
            echo -e -n "Directory /Servers/Complete found...\n"
            echo -e -n "Skipping\n"
            else
            echo -e -n "Directory /Servers/Complete not found...\n"
            echo -e -n "Creating Directory\n"
            sudo mkdir /Servers/Complete; sudo chown $USER -R /Servers
            echo -e -n "Directory Created!\n\n"
        fi
    done
    gh repo clone Complete /Servers/Complete
fi
fi
