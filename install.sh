
# Copy startup scripts
echo copy autostart scripts
mkdir -p ~/.config/autostart
cp assets/desktop/* ~/.config/autostart
echo replace full path...
sed -i 's|$HOME|'$HOME'|g' ~/.config/autostart/login-sound.desktop
sed -i 's|$HOME|'$HOME'|g' ~/.config/autostart/activate-linux.desktop

# Copy soundfonts
echo copy to soundfont to ~/.local/share/sounds
mkdir -p ~/.local/share/sounds
cp -r assets/sounds/WinXP ~/.local/share/sounds
echo set soundfont to WinXP
gsettings set org.gnome.desktop.sound event-sounds true
gsettings set org.gnome.desktop.sound theme-name 'WinXP'

# Copy binary to ~/.local
echo copy binary to ~/.local
mkdir -p ~/.local/bin
cp -f bin/* ~/.local/bin

