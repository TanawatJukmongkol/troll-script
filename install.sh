
# Copy startup scripts
cp assets/desktop/* ~/.config/autostart

sed -i 's|$HOME|'$HOME'|g' ~/.config/autostart/login-sound.desktop
sed -i 's|$HOME|'$HOME'|g' ~/.config/autostart/activate-linux.desktop

# Copy soundfonts
cp -r assets/sounds/WinXP ~/.local/share/sounds

# Copy binary to ~/.local
cp -f bin/* ~/.local/bin

