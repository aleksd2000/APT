# Module Configuration File

## Adding arrays for all 3 depX variables - 20220118
    declare -a dep                   # dep array - app name
    declare -a depmethod             # depmethod array - Install method tool
    declare -a depsource             # depsource array - Install method source


    # Module Name: git

    dep+=("git")                      
    depmethod+=("apt")
    depsource+=("/usr/bin/apt-get")

    dep_count=${#dep[*]}                # Total number of elements






