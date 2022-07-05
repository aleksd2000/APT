# APT
Custom Apt Repository

custom packages for apt repo: gpg gcc dpkg-dev libc6-dev

sudo dpkg-dev apt-get install -y gcc gpg dpkg-dev libc6-dev

#######

Place all custom scripts in 
    ~/Remote/Branches/testing-aleks/APT-Packages/Repo/aleksd2000-scripts_0.0.0.0-1/amd64/opt/bin

then

cd ~/Remote/Branches/testing-aleks/APT-Packages/Repo
dpkg-build aleksd2000-scripts_0.0.0.0-1/

dpkg --info aleksd2000-scripts_0.0.0.0-1.deb

move *.deb files into ~/Remote/APT/pool/main

cd ~/Remote/APT/
dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Packages
cat dists/stable/main/binary-amd64/Packages | gzip -9 > dists/stable/main/binary-amd64/Packages.gz
cd ~/Remote/APT/dists/stable && ~/Remote/APT/generate-release.sh > Release

screen -dmS apt-repo python -m http.server 8000 --bind 127.0.0.1
apt update --allow-insecure-repositories

sudo apt install custom.shellscripts.for.aleksd2000
