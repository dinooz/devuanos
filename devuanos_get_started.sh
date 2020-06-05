# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 7.27.19

# devuanos_get_started.sh - Initial Pre-Req Download Script.
# Execute the following command in a Terminal to get started the DenOS download scripts...
# wget https://raw.githubusercontent.com/dinooz/devuanos/master/devuanos_get_started.sh
# chmod 755 devuanos_get_started.sh
# ./devuanos_get_started.sh

wget https://github.com/dinooz/devuanos/raw/master/Denos_HowTo.txt
wget https://github.com/dinooz/devuanos/raw/master/01_devuanos_pre_reqs.sh
wget https://github.com/dinooz/devuanos/raw/master/02_devuanos_debootstrap.sh

wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_lxde.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_xfce.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_kde.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_mate.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_plasma.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_e17.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_i3.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_openbox.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_awesome.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_lxqt.sh
# Working on this scripts...
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_cinnamon.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_pantheon.sh
wget https://github.com/dinooz/devuanos/raw/master/03_devuanos_chroot_gnome.sh
# Added Devuan 3.0.0
wget https://raw.githubusercontent.com/dinooz/devuanos/master/02_devuanos_debootstrap_3.sh
wget https://raw.githubusercontent.com/dinooz/devuanos/master/03_devuanos_chroot_3.sh

wget https://github.com/dinooz/devuanos/raw/master/04_devuanos_MakeSquashfs.sh
wget https://github.com/dinooz/devuanos/raw/master/05_devuanos_BiosUEFI_ISO.sh
wget https://github.com/dinooz/devuanos/raw/master/devuanos_config.txt
wget https://github.com/dinooz/devuanos/raw/master/devuanos_clean.sh
wget https://github.com/dinooz/devuanos/blob/master/background.jpg

wget https://git.devuan.org/devuan-packages/debootstrap/raw/suites/ascii/scripts/ceres
sudo cp ./ceres /usr/share/debootstrap/scripts/
sudo ln -sf /usr/share/debootstrap/scripts/ceres /usr/share/debootstrap/scripts/ascii

chmod 755 *.sh
