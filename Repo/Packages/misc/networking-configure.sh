# Networking Configuration Script

cleverecho="/bin/echo -e -n" ;
ipallocationfile="files/data/configuration/ipallocation-$HOSTNAME-testing.h"; 
interfacesfile="files/data/configuration/interfaces-$HOSTNAME"
blankline="/bin/echo -e -n \n"; 

# Delete these lines after code is complete: 
 
defaultip4subnet="/24";  
defaultip6subnet=""; 
defaultipv6="2a01:4f8:13b:1a90"; 

# End of Delete

write() {
    $cleverecho "# IP Allocation Configuration File for hostname: $HOSTNAME\n"> $ipallocationfile  
    $blankline >> $ipallocationfile; 
    $cleverecho "config=true\n">> $ipallocationfile; 
    $blankline >> $ipallocationfile;
    $cleverecho "# Default Information:\n">> $ipallocationfile;
        $blankline >> $ipallocationfile; 
        $cleverecho "defaultinterface="enp4s0"\n" >> $ipallocationfile;
        $cleverecho "defaultipv4gateway="94.130.217.129"\n" >> $ipallocationfile;
        $cleverecho "defaultnetmask="255.255.255.192"\n" >> $ipallocationfile;
        $cleverecho "ipv6defaultgateway="fe80::1"\n" >> $ipallocationfile;
        $cleverecho "defaultip4subnet="/24"\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# IPv4 Addresses:\n" >> $ipallocationfile; 
        $blankline >> $ipallocationfile;
        $cleverecho "primaryipv4="94.130.217.180$defaultip4subnet"\n" >> $ipallocationfile; 
        $cleverecho "secondaryipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "thirdipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "fourthipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "fifthipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "sixipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "seventhipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "eighthipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "ninthipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
        $cleverecho "tenthipv4="0.0.0.0$defaultip4subnet"\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# Default IPv6 Allocation Table:\n" >> $ipallocationfile; 
        $blankline >> $ipallocationfile;
        $cleverecho "defaultipv6="$defaultipv6::$defaultip6subnet"\n" >> $ipallocationfile;
        $cleverecho "defaultip6subnet="/64"\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
    $cleverecho "IPv6 Address Pools:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6pool01="2a01:4f8:13b:1a90::$defaultip6subnet"\n" >> $ipallocationfile;
        $cleverecho "ipv6pool02=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool03=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool04=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool05=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool06=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool07=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool08=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool09=""\n" >> $ipallocationfile;
        $cleverecho "ipv6pool10=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
    $cleverecho "Specific IPv6 Hosts:\n" >> $ipallocationfile; 
    $blankline >> $ipallocationfile;
    $cleverecho "# Pool One:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname101="obsidian.aleksd2000.cc"\n" >> $ipallocationfile;
        $cleverecho "ipv6address101="2a01:4f8:13b:1a90::1$defaultip6subnet"\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname102="unassigned"\n" >> $ipallocationfile;  
        $cleverecho "ipv6address102="2a01:4f8:13b:1a90::2$defaultip6subnet"\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname103=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address103=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname104=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address104=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname105=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address105=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname106=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address106=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname107=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address107=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname108=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address108=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname109=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address109=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname110=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address110=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname111=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address111=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname112=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address112=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname113=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address113=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname114=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address114=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname115=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address115=""\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# Pool Two:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;     
        $cleverecho "ipv6hostname201=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address201=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname202=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address202=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname203=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address203=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname204=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address204=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname205=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address205=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname206=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address206=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname207=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address207=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname208=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address208=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname209=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address209=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname210=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address210=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname211=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address211=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname212=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address212=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname213=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address213=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname214=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address214=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname215=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address215=""\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# Pool Three:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname301=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address301=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname302=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address302=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname303=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address303=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname304=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address304=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname305=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address305=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname306=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address306=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname307=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address307=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname308=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address308=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname309=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address309=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname310=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address310=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname311=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address311=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname312=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address312=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname313=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address313=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname314=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address314=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname315=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address315=""\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# Pool Four:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname401=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address401=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname402=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address402=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname403=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address403=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname404=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address404=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname405=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address405=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname406=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address406=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname407=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address407=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname408=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address408=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname409=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address409=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname410=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address410=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname411=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address411=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname412=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address412=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname413=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address413=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname414=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address414=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname415=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address415=""\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
    $cleverecho "# Pool Five:\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname501=""\n" >> $ipallocationfile;
        $cleverecho "ipv6address501=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname502=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address502=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname503=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address503=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname504=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address504=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname505=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address505=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname506=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address506=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname507=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address507=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname508=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address508=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname509=""\n" >> $ipallocationfile; 
        $cleverecho "ipv6address509=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname510=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address510=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname511=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address511=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname512=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address512=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname513=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address513=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname514=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address514=""\n" >> $ipallocationfile;
        $blankline >> $ipallocationfile;
        $cleverecho "ipv6hostname515=""\n" >> $ipallocationfile;  
        $cleverecho "ipv6address515=""\n" >> $ipallocationfile;
    $blankline >> $ipallocationfile;
}

generateinterfacesfile() {
    source $ipallocationfile
    $cleverecho "source /etc/network/interfaces.d/*\n"
    $blankline
    $cleverecho "auto lo\n"
    $cleverecho "iface lo inet loopback\n"
    $cleverecho "iface lo inet6 loopback\n"
    $blankline
    $cleverecho "auto $defaultinterface\n"
    $cleverecho "iface $defaultinterface inet static\n"
    $cleverecho "\taddress $primaryipv4\n"
    $cleverecho "\tnetmask $defaultnetmask\n"
    $cleverecho "\tgateway $defaultipv4gateway\n"
    $cleverecho "\t\tup route add -net 94.130.217.128 netmask $defaultnetmask gw $defaultipv4gateway dev $defaultinterface\n"
    $blankline
    $cleverecho "# IPv6 Address Pools: \n"
    $blankline
    $cleverecho "iface $defaultinterface inet6 static\n"
    $cleverecho "\taddress $ipv6address101\n"
    $cleverecho "\tgateway fe80::1\n"
    $blankline
    $cleverecho "iface $defaultinterface inet6 static\n"
    $cleverecho "\taddress $ipv6address102\n"
    $cleverecho "\tgateway fe80::1\n"
}
    
old() {
    ### Hetzner Online GmbH installimage
    
    source /etc/network/interfaces.d/*
    
    auto lo
    iface lo inet loopback
    iface lo inet6 loopback
    
    auto enp4s0
    iface enp4s0 inet static
      address 94.130.217.180
      netmask 255.255.255.192
      gateway 94.130.217.129
      # route 94.130.217.128/26 via 94.130.217.129
      up route add -net 94.130.217.128 netmask 255.255.255.192 gw 94.130.217.129 dev enp4s0
    
    iface enp4s0 inet6 static
      address 2a01:4f8:13b:1a90::1
      netmask 64
      gateway fe80::1
    
    iface enp4s0 inet6 static
      address 2a01:4f8:13b:1a90::2
      netmask 64
      gateway fe80::1
}


generateinterfacesfile