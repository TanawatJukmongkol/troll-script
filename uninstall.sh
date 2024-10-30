
# Remove startup scripts
echo remove startup scripts
rm -f ~/.config/autostart/login-sound.desktop
rm -f ~/.config/autostart/activate-linux.desktop

# Remove soundfont
echo remove soundfont
rm -rf ~/.local/share/sounds/WinXP
echo set soundfont to default
gsettings set org.gnome.desktop.sound theme-name 'default'

# Remove binary from ~/.local
echo remove binary from ~/.local
rm -f ~/.local/bin/activate-linux

# Kill troll binary
echo Kill troll binary
pkill activate-linux

