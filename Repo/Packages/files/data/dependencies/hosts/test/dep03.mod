# Module Configuration File

    # Module Name: code-server

    dep+=("code-server")              
    depmethod+=("curl")
    depsource+=("/usr/bin/curl -fsSL https://code-server.dev/install.sh | sh")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep03.mod")
