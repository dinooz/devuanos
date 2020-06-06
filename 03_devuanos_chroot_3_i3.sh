# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 7.27.19

# 03_devuanos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_devuanos_chroot_3_i3.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./devuanos_config.txt

#echo "devuan-live" > /etc/hostname
echo $DISTRO_NAME > /etc/hostname 

apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
    linux-image-4.19.0-9-amd64 \
    live-boot

apt-get install -y --no-install-recommends \
    netbase ifupdown isc-dhcp-client inetutils-ping \
    network-manager net-tools wireless-tools wpagui \
    curl openssh-server openssh-client \
    xserver-xorg-core xserver-xorg xinit xterm \
    screenfetch screen lxterminal vim \
    i3 i3status dmenu i3lock xbacklight feh conky \
    slim nano && \
apt-get clean

echo "exec i3" > /root/.xinitrc
chmod 755 /root/.xinitrc

#echo "user-session=i3" >> /etc/lightdm/lightdm.conf

echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "127.0.0.1\t$HOSTNAME" >> /etc/hosts

mv /background.jpg /usr/share/slim/themes/default/

passwd root

exit
