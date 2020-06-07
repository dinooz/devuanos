# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 7.27.19

# 03_devuanos_chroot.sh - Customize your Distro
# As user. Execute the script in a Terminal 
# ./04_devuanos_MakeSquashfs.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./devuanos_config.txt

sudo umount $HOME/$LIVE_BOOT/proc
sudo umount $HOME/$LIVE_BOOT/dev
sudo umount $HOME/$LIVE_BOOT/sys

sudo rm -f $HOME/$LIVE_BOOT/chroot/03_*.sh 
sudo rm -f $HOME/$LIVE_BOOT/chroot/devuanos_config.txt 

mkdir -p $HOME/$LIVE_BOOT/{scratch,image/live}

sudo mksquashfs \
    $HOME/$LIVE_BOOT/chroot \
    $HOME/$LIVE_BOOT/image/live/filesystem.squashfs \
    -e boot

cp $HOME/$LIVE_BOOT/chroot/boot/vmlinuz-* \
    $HOME/$LIVE_BOOT/image/vmlinuz && \
cp $HOME/$LIVE_BOOT/chroot/boot/initrd.img-* \
    $HOME/$LIVE_BOOT/image/initrd

cat <<EOF >$HOME/$LIVE_BOOT/scratch/grub.cfg

search --set=root --file /DEVUAN_CUSTOM

insmod all_video

set default="0"
set timeout=30

menu_color_normal=white/dark-gray
menu_color_highlight=light-green/dark-gray

menuentry "$DISTRO_NAME Live" {
    linux /vmlinuz boot=live quiet nomodeset
    initrd /initrd
}
EOF

touch $HOME/$LIVE_BOOT/image/DEVUAN_CUSTOM

ls -lh $HOME/$LIVE_BOOT
ls -lRh $HOME/$LIVE_BOOT/scratch
ls -lRh $HOME/$LIVE_BOOT/image

echo " "
echo "Execute ./05_devuanos_BiosUEFI_ISO.sh"
echo " "
