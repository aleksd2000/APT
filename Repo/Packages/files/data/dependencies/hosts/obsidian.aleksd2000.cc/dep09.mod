# Module Configuration File

    dep+=("oracle-java17-installer")  # 9. Java 17 Installer                                                         [java 17.0.1 2021-10-19 LTS]
    depmethod+=("apt*")
    depsource+=("/usr/bin/apt-get install")
    depfilename+=("files/data/dependencies/hosts/$HOSTNAME/dep09.mod")
    ppainstall+=("sudo add-apt-repository ppa:linuxuprising/java && sudo apt update && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A && sudo apt update && sudo apt-get install oracle-java17-installer --install-recommends")
