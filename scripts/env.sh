#!/bin/bash
# A little set-env-up script.

# Normal update/upgrade
sudo apt-get update && sudo apt-get upgrade

# Android
cd
git clone https://github.com/akhilnarang/scripts scripts/
cd scripts/
bash setup/android_build_env.sh

# QEMU/other stuff libs
sudo apt-get install --ignore-missing -y libaio-dev libbluetooth-dev libbrlapi-dev libbz2-dev libcap-dev libcap-ng-dev  \
libcurl4-gnutls-dev libgtk-3-dev libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev librbd-dev \
librdmacm-dev libsasl2-dev libsdl1.2-dev libseccomp-dev libsnappy-dev libssh2-1-dev libvde-dev \
libvdeplug-dev libvte-2.90-dev libxen-dev liblzo2-dev valgrind xfslibs-dev

# Other stuff
sudo apt-get install --ignore-missing -y google-chrome-unstable vnc4server telegram-desktop teamviewer sublime-text-dev speedtest-cli \
smartmontools snap rsync rpm2cpio repo python python3 qbittorrent p7zip lm-sensors android-sdk-platform-tools-common \
android-tools-adb android-tools-fastboot adb lolcat toilet

# CI
cd
git clone https://github.com/Giovix92/CIbot CI/ --recurse-submodules

# Aliases
cd
cat >> .bashrc <<EOF
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
alias CI="bash /home/giovix92/CI/bot.sh"
alias ssc="sudo sh /home/giovix92/Desktop/ssc.sh"
alias revengedir="cd /media/giovix92/HDD/RevengeOS"
alias revengesync="revengedir && repo sync -c -f --force-sync --no-tag --no-clone-bundle -j$(nproc --all) --optimized-fetch --prune"
alias revengebuild="revengedir && . build/envsetup.sh && lunch revengeos_tissot-user && make bacon -j8"
alias twrpdir="cd /media/giovix92/HDD/twrp"
alias twrpbuild="twrpdir && . build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true && lunch omni_tissot-eng && mka recoveryimage"
alias twrpcleanbuild="twrpdir && make clean && twrpbuild && adb reboot-bootloader && fastboot boot out/target/product/tissot/recovery.img"
alias revenge10dir="cd /media/giovix92/HDD/RevengeOS10"
alias revenge10sync="revenge10dir && repo sync -c -f --force-sync --no-tag --no-clone-bundle -j$(nproc --all) --optimized-fetch --prune"
alias revenge10build="revenge10dir && . build/envsetup.sh && lunch revengeos_tissot-userdebug && make bacon -j$(nproc --all)"
alias shrpdir="cd /media/giovix92/HDD/shrp/"
alias shrpbuild="shrpdir && . build/envsetup.sh && lunch omni_tissot-eng && mka recoveryimage -j8"
alias shrpboot="shrpdir && fastboot boot out/target/product/tissot/recovery.img"
alias spotify="google-chrome-unstable https://open.spotify.com/browse/featured"
#Git stuff
alias cleanempty="git filter-branch --prune-empty --parent-filter 'sed "s/-p //g" | xargs -r git show-branch --independent | sed "s/\</-p /g"'"
EOF

# SSC
cd
cat >> Desktop/ssc.sh <<EOF
#!/bin/bash
alias lolcat="/usr/games/lolcat"
line=Giovix92
ccache -o cache_dir="/home/giovix92/.ccache"
ccache -o max_size="35.0G"
COLUMNS=$(tput cols) 
title="Giovix92" 
commands="toilet --filter border Giovix92"
line1="    mmm     #                    #            mmmm   mmmm" 
line2="   m      mmm     mmm   m   m  mmm    m   m  #    m      #"
line3="  #   mm   #    #   #   m m     #     #m#   #m  m#     m"
line4="mmmm   #    #   #   #m#     #     m#m        #   m"
line5="   mm  mm#mm   #m#     #    mm#mm  m   m   mmmm   #mmmm"
while :
do
    for x in /sys/devices/system/cpu/*/cpufreq/; do echo 2800000 | sudo tee $x/scaling_max_freq 1>/dev/null; done && echo -e '\0033\0143' && 
    printf "%*s\n" $(((${#line1}+$COLUMNS)/2)) "$line1" | lolcat && printf "%*s\n" $(((${#line2}+$COLUMNS)/2)) "$line2" | lolcat &&
    printf "%*s\n" $(((${#line3}+$COLUMNS)/2)) "$line3" | lolcat && printf "%*s\n" $(((${#line4}+$COLUMNS)/2)) "$line4" | lolcat &&
    printf "%*s\n" $(((${#line5}+$COLUMNS)/2)) "$line5" | lolcat &&  echo "CPU Temp: " && sensors | grep -i "Core " && echo "" &&
    echo "CPU Freq: " && lscpu | grep "MHz" && echo && echo "Disks: " && df --human | grep -i "/dev/sda5" && df --human | grep -i "/dev/sdb1" &&
    echo "" && echo "RAM: " && free -h && echo "" && echo "Ccache stats: " && ccache -s | grep -i "cache size" && ccache -s | grep -i "files in cache"
sleep 1
done
EOF

echo "All done!"
sleep 4
exit