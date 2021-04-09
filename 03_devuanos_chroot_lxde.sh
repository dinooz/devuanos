# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 7.27.19

# 03_devuanos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_devuanos_chroot.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./devuanos_config.txt

echo $DISTRO_NAME > /etc/hostname 

apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
    linux-image-amd64 \
    live-boot

apt-get install -y --no-install-recommends \
    netbase ifupdown isc-dhcp-client inetutils-ping \
    network-manager net-tools wireless-tools wpagui \
    curl openssh-server openssh-client \
    blackbox xserver-xorg-core xserver-xorg xinit xterm \
    screenfetch screen lxterminal vim \
    lxde* \
    psmisc htop nmap wget git \
    nano && \
apt-get clean

echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "127.0.0.1\t$DISTRO_HOSTNAME" >> /etc/hosts

# Create live user
#useradd -m live -s /bin/bash
# Change user live password to : newpassword
#echo 'live:live' | chpasswd

passwd root

exit

