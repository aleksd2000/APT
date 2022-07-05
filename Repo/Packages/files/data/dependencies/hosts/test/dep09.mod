# Module Configuration File

    # Module Name: oracle-java17-installer

    dep+=("oracle-java17-installer")  # 8. Java 17 Installer                                                         [java 17.0.1 2021-10-19 LTS]
    depmethod+=("apt*")
    depsource+=("/usr/bin/apt-get install")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep09.mod")





