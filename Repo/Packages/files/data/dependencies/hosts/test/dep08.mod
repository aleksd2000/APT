# Module Configuration File

    # Module Name: rclone

    dep+=("rclone")                   # 7. Rclone                                                                    [rclone v1.53.3-DEV]
    depmethod+=("curl")
    depsource+=("/usr/bin/curl https://rclone.org/install.sh | sudo bash -s beta")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep08.mod")



