sudo pacman -S --needed \
  networkmanager \
  hyprland \
  waybar \
  wofi \
  kitty \
  git \
  pipewire \
  pipewire-pulse \
  wireplumber \
  pavucontrol \
  fastfetch \
  python-pywal \
  firefox \
  grim slurp \
  wl-clipboard \
  mako

sudo systemctl enable --now NetworkManager

systemctl --user enable --now pipewire pipewire-pulse wireplumber

mkdir -p ~/.config ~/.local/bin ~/Pictures/Wallpapers

ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wofi ~/.config/wofi
ln -sf ~/dotfiles/kitty ~/.config/kitty

cp -r ~/dotfiles/Wallpapers/* ~/Pictures/Wallpapers/

ln -sf ~/dotfiles/bin/wallpaper.sh ~/.local/bin/wallpaper.sh
chmod +x ~/.local/bin/wallpaper.sh
