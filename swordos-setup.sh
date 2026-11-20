
#sword-branding
sudo mv sword-branding etc/
sudo mv kcm-about-distrorc etc/xdg/
sudo mv -f os-release etc/
sudo mv swordos.svg usr/local/share/icons/hicolor/scalable/apps/

#fastfetch
mv -f fastfetch .config/

#Обнови кэш KDE
kbuildsycoca6 --noincremental

sudo pacman -S jd
