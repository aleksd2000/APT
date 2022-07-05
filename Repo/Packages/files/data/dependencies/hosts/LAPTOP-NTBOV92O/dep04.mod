# Module Configuration File

    # Module Name: fail2ban

    dep+=("fail2ban")              
    depmethod+=("apt")
    depsource+=("/usr/bin/apt-get install")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep04.mod")
    ppainstall+=("")