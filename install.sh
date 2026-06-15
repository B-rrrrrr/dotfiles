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

systemctl --user enable pipewire pipewire-pulse wireplumber

mkdir -p ~/.config ~/.local/bin

rm -rf ~/.config/hypr ~/.config/waybar ~/.config/wofi ~/.config/kitty

ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wofi ~/.config/wofi
ln -sf ~/dotfiles/kitty ~/.config/kitty

ln -sf ~/dotfiles/bin/wallpaper ~/.local/bin/wallpaper
chmod +x ~/.local/bin/wallpaper
