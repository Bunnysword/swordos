
#sword-branding
sudo mkdir -p /etc/sword-branding && sudo mv logo.png /etc/sword-branding/
sudo mv kcm-about-distrorc /etc/xdg/kcm-about-distrorc
sudo mv -f os-release /etc
sudo cp swordos.svg /usr/local/share/icons/hicolor/scalable/apps/swordos.svg

#fastfetch
mv config.jsonc hardware.sh memory.sh software.sh time.sh ~/.config/fastfetch/

#Обнови кэш KDE
kbuildsycoca6 --noincremental

sudo pacman -S jd
