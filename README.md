# APT
Custom Apt Repository

custom packages for apt repo: gpg gcc dpkg-dev libc6-dev

sudo dpkg-dev apt-get install -y gcc gpg dpkg-dev libc6-dev

#######

Place all custom scripts in 
    Repo/Packages/
then

cd Repo/Packages/

dpkg-build aleksd2000-scripts_0.0.0.0-1/
dpkg --info aleksd2000-scripts_0.0.0.0-1.deb

move *.deb files into APT/pool/main
cd ../../
cd APT/
dpkg-scanpackages --arch amd64 pool/ > dists/stable/main/binary-amd64/Packages
cat APT/dists/stable/main/binary-amd64/Packages | gzip -9 > APT/dists/stable/main/binary-amd64/Packages.gz
cd APT/dists/stable && APT/generate-release.sh > Release

screen -dmS apt-repo python -m http.server 8000 --bind 127.0.0.1
apt update --allow-insecure-repositories

sudo apt install custom.shellscripts.for.aleksd2000
