#install gnome-tweaks and chrome-gnome-shell
echo "Updating repository index"
echo "Please wait"
echo "......"
sudo apt update
echo "Now installing Gnome Tweaks"
echo "....."
sudo apt -y install gnome-tweaks chrome-gnome-shell
#create themes and icons directory
echo "Creating icons and themes forlder under Home directory"
mkdir ~/.icons
mkdir ~/.themes
#Extract files
tar -xvf OSX.for.Dash.to.DOCK.tar.xz
tar -xvf McOS-Space-Grey-3.30.tar.xz
tar -xvf MacOSX.tar.xz
cp -R 3.30/Majove ~/.themes
mv MacOSX ~/.icons
mv McOS-Space-Grey-3.30 ~/.themes
sudo cp macOS-Mojave-Day-wallpaper.jpg /usr/share/backgrounds/
gsettings set org.gnome.desktop.interface gtk-theme "McOS-Space-Grey-3.30"
gsettings set org.gnome.desktop.interface icon-theme 'MacOSX'
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/macOS-Mojave-Day-wallpaper.jpg
#Change Dock Settings
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style DEFAULT
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots false
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode DEFAULT
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell enable-hot-corners "true"
#To reset the dock, use this command
#dconf reset -f /org/gnome/shell/extensions/dash-to-dock/

#Open Extensions.gnome.org
/usr/bin/firefox https://extensions.gnome.org/
/usr/bin/firefox https://extensions.gnome.org/extension/19/user-themes/
/usr/bin/firefox https://extensions.gnome.org/extension/358/activities-configurator/
