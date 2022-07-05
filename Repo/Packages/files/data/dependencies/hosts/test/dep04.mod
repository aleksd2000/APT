# Module Configuration File

    # Module Name: fail2ban

    dep+=("fail2ban")                 # 4. fail2ban                                                                  [fail2ban 0.10.2-2.1]
    depmethod+=("apt")
    depsource+=("/usr/bin/apt-get install")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep04.mod")




