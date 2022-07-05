# Module Configuration File

    # Module Name: git
    dep+=("git")                      
    depmethod+=("apt")
    depsource+=("/usr/bin/apt-get install")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep01.mod")
    ppainstall+=("")