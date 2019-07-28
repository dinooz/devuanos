# DevuanOS - Devuan Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 7.27.19

# devuanos_clean.sh - Clean DenOS Installation
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source devuanos_config.txt

 
sudo rm -R -f $HOME/$LIVE_BOOT

sudo rm -R -f ./0*.sh
sudo rm -R -f ./*.txt
