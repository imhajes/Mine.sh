

function greenMessage {
    echo -e "\\033[32;1m${@}\033[0m"
}

function kekMessage {
    echo -e "\\033[36;1m${@}\033[0m"
}

if [ -z "$1" ]
then
echo "./Mine.sh (Bitcoin/Adress)"
exit 0
fi


ADRESS = $1


clear
greenMessage "################################################"
kekMessage""
kekMessage  "               Bitcoin/Mine"
kekMessage  "                   Version 1.0"
kekMessage  "                   Script by"
kekMessage  "                  RAW NETWORKS"
kekMessage  "              _____________________"
kekMessage ""
kekMessage  "                 Nulled-World.eu"
kekMessage""
greenMessage "################################################"
sleep 2
kekMessage  "               Installiere Pakete"
sleep 1
apt-get install git
sleep 1
apt-get install screen
sleep 1
apt-get install sudo
sleep 1
sudo apt-get install cmake build-essential libboost-all-dev
sleep 1
git clone -b Linux https://github.com/nicehash/nheqminer
sleep 1
cd nheqminer/cpu_xenoncat/Linux/asm/
sleep 1
sh assemble.sh
sleep 1
cd ../../../Linux_cmake/nheqminer_cpu
sleep 1
cmake .
sleep 1
make -j $(nproc)
sleep 1
screen ./nheqminer_cpu -b
sleep 2
screen ./nheqminer_cpu -l equihash.hk.nicehash.com:3357 -u $1.work1 -t 14
