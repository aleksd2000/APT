if [[ "$1" = "networking" && "$2" = "generate" && "$3" = "networking.service" ]]; then

    echo -e -n "Please Wait!!\n\n"
    echo -e -n "Generating networking.service files\n\n"
    generatedfile=setup/interfaces-generated
    rm $generatedfile
    source setup/ipallocation.h

    echo -e -n "# Custom Networking Configuration File\n"                                                           >> $generatedfile
    echo -e -n "auto lo\n"                                                                                          >> $generatedfile
    echo -e -n "iface lo inet loopback\n"                                                                           >> $generatedfile
    echo -e -n "source /etc/network/interfaces.d/*\n"                                                               >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "# Main IPv4\n"                                                                                      >> $generatedfile
    echo -e -n "iface $defaultinterface inet static\n"                                                              >> $generatedfile
    echo -e -n "\taddress $defaultipv4\n"                                                                           >> $generatedfile
    echo -e -n "\tgateway $defaultipv4gateway\n"                                                                    >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "# Secondary IPv4\n"                                                                                 >> $generatedfile
    echo -e -n "\tiface $defaultinterface inet static\n"                                                            >> $generatedfile
    echo -e -n "\taddress $secondaryipv4\n"                                                                         >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "# Main IPv6\n"                                                                                      >> $generatedfile
    echo -e -n "iface eth0 inet6 static\n"                                                                          >> $generatedfile
    echo -e -n "\taddress $defaultipv6\n"                                                                           >> $generatedfile
    echo -e -n "\tgateway $ipv6defaultgateway\n"                                                                    >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile
    echo -e -n "# Adding additional IPv6 addresses.\n"                                                              >> $generatedfile
    echo -e -n "\n"                                                                                                 >> $generatedfile
 
    if [ "$ipv6hostname101" != "" ];        then    echo -e -n "# $ipv6hostname101\n"                               >> $generatedfile; fi
    if [ "$ipv6address101" != "" ];         then    echo -e -n "address $ipv6address101\n"                          >> $generatedfile; fi
    if [ "$ipv6address101" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname102" != "" ];        then    echo -e -n "# $ipv6hostname102\n"                               >> $generatedfile; fi
    if [ "$ipv6address102" != "" ];         then    echo -e -n "address $ipv6address102\n"                          >> $generatedfile; fi
    if [ "$ipv6address102" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname103" != "" ];        then    echo -e -n "# $ipv6hostname103\n"                               >> $generatedfile; fi
    if [ "$ipv6address103" != "" ];         then    echo -e -n "address $ipv6address103\n"                          >> $generatedfile; fi
    if [ "$ipv6address103" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname104" != "" ];        then    echo -e -n "# $ipv6hostname104\n"                               >> $generatedfile; fi
    if [ "$ipv6address104" != "" ];         then    echo -e -n "address $ipv6address104\n"                          >> $generatedfile; fi
    if [ "$ipv6address104" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname105" != "" ];        then    echo -e -n "# $ipv6hostname105\n"                               >> $generatedfile; fi
    if [ "$ipv6address105" != "" ];         then    echo -e -n "address $ipv6address105\n"                          >> $generatedfile; fi
    if [ "$ipv6address105" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname106" != "" ];        then    echo -e -n "# $ipv6hostname106\n"                               >> $generatedfile; fi
    if [ "$ipv6address106" != "" ];         then    echo -e -n "address $ipv6address106\n"                          >> $generatedfile; fi
    if [ "$ipv6address106" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname107" != "" ];        then    echo -e -n "# $ipv6hostname107\n"                               >> $generatedfile; fi
    if [ "$ipv6address107" != "" ];         then    echo -e -n "address $ipv6address107\n"                          >> $generatedfile; fi
    if [ "$ipv6address107" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname108" != "" ];        then    echo -e -n "# $ipv6hostname108\n"                               >> $generatedfile; fi
    if [ "$ipv6address108" != "" ];         then    echo -e -n "address $ipv6address108\n"                          >> $generatedfile; fi
    if [ "$ipv6address108" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname109" != "" ];        then    echo -e -n "# $ipv6hostname109\n"                               >> $generatedfile; fi
    if [ "$ipv6address109" != "" ];         then    echo -e -n "address $ipv6address109\n"                          >> $generatedfile; fi
    if [ "$ipv6address109" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname110" != "" ];        then    echo -e -n "# $ipv6hostname110\n"                               >> $generatedfile; fi
    if [ "$ipv6address110" != "" ];         then    echo -e -n "address $ipv6address110\n"                          >> $generatedfile; fi
    if [ "$ipv6address110" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname111" != "" ];        then    echo -e -n "# $ipv6hostname111\n"                               >> $generatedfile; fi
    if [ "$ipv6address111" != "" ];         then    echo -e -n "address $ipv6address111\n"                          >> $generatedfile; fi
    if [ "$ipv6address111" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname112" != "" ];        then    echo -e -n "# $ipv6hostname112\n"                               >> $generatedfile; fi
    if [ "$ipv6address112" != "" ];         then    echo -e -n "address $ipv6address112\n"                          >> $generatedfile; fi
    if [ "$ipv6address112" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname113" != "" ];        then    echo -e -n "# $ipv6hostname113\n"                               >> $generatedfile; fi
    if [ "$ipv6address113" != "" ];         then    echo -e -n "address $ipv6address113\n"                          >> $generatedfile; fi
    if [ "$ipv6address113" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname114" != "" ];        then    echo -e -n "# $ipv6hostname114\n"                               >> $generatedfile; fi
    if [ "$ipv6address114" != "" ];         then    echo -e -n "address $ipv6address114\n"                          >> $generatedfile; fi
    if [ "$ipv6address114" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname115" != "" ];        then    echo -e -n "# $ipv6hostname115\n"                               >> $generatedfile; fi
    if [ "$ipv6address115" != "" ];         then    echo -e -n "address $ipv6address115\n"                          >> $generatedfile; fi
    if [ "$ipv6address115" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname201" != "" ];        then    echo -e -n "# Second IPv6 Pool:\n"                              >> $generatedfile; fi

    if [ "$ipv6hostname201" != "" ];        then    echo -e -n "# $ipv6hostname101\n"                               >> $generatedfile; fi
    if [ "$ipv6address201" != "" ];         then    echo -e -n "address $ipv6address101\n"                          >> $generatedfile; fi
    if [ "$ipv6address201" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname202" != "" ];        then    echo -e -n "# $ipv6hostname102\n"                               >> $generatedfile; fi
    if [ "$ipv6address202" != "" ];         then    echo -e -n "address $ipv6address102\n"                          >> $generatedfile; fi
    if [ "$ipv6address202" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname203" != "" ];        then    echo -e -n "# $ipv6hostname103\n"                               >> $generatedfile; fi
    if [ "$ipv6address203" != "" ];         then    echo -e -n "address $ipv6address103\n"                          >> $generatedfile; fi
    if [ "$ipv6address203" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname204" != "" ];        then    echo -e -n "# $ipv6hostname104\n"                               >> $generatedfile; fi
    if [ "$ipv6address204" != "" ];         then    echo -e -n "address $ipv6address104\n"                          >> $generatedfile; fi
    if [ "$ipv6address204" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname205" != "" ];        then    echo -e -n "# $ipv6hostname105\n"                               >> $generatedfile; fi
    if [ "$ipv6address205" != "" ];         then    echo -e -n "address $ipv6address105\n"                          >> $generatedfile; fi
    if [ "$ipv6address205" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname206" != "" ];        then    echo -e -n "# $ipv6hostname106\n"                               >> $generatedfile; fi
    if [ "$ipv6address206" != "" ];         then    echo -e -n "address $ipv6address106\n"                          >> $generatedfile; fi
    if [ "$ipv6address206" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname207" != "" ];        then    echo -e -n "# $ipv6hostname107\n"                               >> $generatedfile; fi
    if [ "$ipv6address207" != "" ];         then    echo -e -n "address $ipv6address107\n"                          >> $generatedfile; fi
    if [ "$ipv6address207" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname208" != "" ];        then    echo -e -n "# $ipv6hostname108\n"                               >> $generatedfile; fi
    if [ "$ipv6address208" != "" ];         then    echo -e -n "address $ipv6address108\n"                          >> $generatedfile; fi
    if [ "$ipv6address208" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname209" != "" ];        then    echo -e -n "# $ipv6hostname109\n"                               >> $generatedfile; fi
    if [ "$ipv6address209" != "" ];         then    echo -e -n "address $ipv6address109\n"                          >> $generatedfile; fi
    if [ "$ipv6address209" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname210" != "" ];        then    echo -e -n "# $ipv6hostname110\n"                               >> $generatedfile; fi
    if [ "$ipv6address210" != "" ];         then    echo -e -n "address $ipv6address110\n"                          >> $generatedfile; fi
    if [ "$ipv6address210" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname211" != "" ];        then    echo -e -n "# $ipv6hostname111\n"                               >> $generatedfile; fi
    if [ "$ipv6address211" != "" ];         then    echo -e -n "address $ipv6address111\n"                          >> $generatedfile; fi
    if [ "$ipv6address211" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname212" != "" ];        then    echo -e -n "# $ipv6hostname112\n"                               >> $generatedfile; fi
    if [ "$ipv6address212" != "" ];         then    echo -e -n "address $ipv6address112\n"                          >> $generatedfile; fi
    if [ "$ipv6address212" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname213" != "" ];        then    echo -e -n "# $ipv6hostname113\n"                               >> $generatedfile; fi
    if [ "$ipv6address213" != "" ];         then    echo -e -n "address $ipv6address113\n"                          >> $generatedfile; fi
    if [ "$ipv6address213" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname214" != "" ];        then    echo -e -n "# $ipv6hostname114\n"                               >> $generatedfile; fi
    if [ "$ipv6address214" != "" ];         then    echo -e -n "address $ipv6address114\n"                          >> $generatedfile; fi
    if [ "$ipv6address214" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

    if [ "$ipv6hostname215" != "" ];        then    echo -e -n "# $ipv6hostname115\n"                               >> $generatedfile; fi
    if [ "$ipv6address215" != "" ];         then    echo -e -n "address $ipv6address115\n"                          >> $generatedfile; fi
    if [ "$ipv6address215" != "" ];         then    echo -e -n "\n"                                                 >> $generatedfile; fi

fi