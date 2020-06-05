# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 6.05.20

# 02_devuanos_debootstrap_3.sh - Debootstrap our Distro
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source devuanos_config.txt

mkdir $HOME/$LIVE_BOOT

sudo debootstrap \
--variant=minbase \
--include=nano \
beowulf \
$HOME/$LIVE_BOOT/chroot \
http://pkgmaster.devuan.org/merged/


sudo cp ./03_*.sh $HOME/$LIVE_BOOT/chroot
sudo cp ./devuanos_config.txt $HOME/$LIVE_BOOT/chroot

sudo mkdir $HOME/$LIVE_BOOT/proc
sudo mkdir $HOME/$LIVE_BOOT/dev
sudo mkdir $HOME/$LIVE_BOOT/sys

sudo mount -t proc /proc $HOME/$LIVE_BOOT/proc
sudo mount -o bind /dev $HOME/$LIVE_BOOT/dev
sudo mount -o bind /sys $HOME/$LIVE_BOOT/sys

sudo chroot $HOME/$LIVE_BOOT/chroot /bin/bash
