#install gnome-tweaks and chrome-gnome-shell
echo "Updating repository index"
echo "Please wait"
echo "......"
sudo apt update
echo "Now installing Gnome Tweaks"
echo "....."
sudo apt install gnome-tweaks chrome-gnome-shell
#create themes and icons directory
echo "Creating icons and themes forlder under Home directory"
mkdir ~/.icons
mkdir ~/.themes
#Extract files
tar -xvf DARK.for.Dash.to.DOCK.tar.xz
tar -xvf McOS-Space-Grey-3.30.tar.xz
tar -xvf MacOSX.tar.xz
cp -R 3.30/Majove_NIGHT ~/.themes
mv MacOSX ~/.icons
mv McOS-Space-Grey-3.30 ~/.themes
gsettings set org.gnome.desktop.interface gtk-theme "McOS-Space-Grey-3.30"
gsettings set org.gnome.desktop.interface icon-theme 'MacOSX'
