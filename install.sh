#for vm: 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
#for acer:
#for thinkpad:

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

systemctl enable --now NetworkManager
systemctl enable --now pipewire pipewire-pulse wireplumber

mkdir -p ~/.config

ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wofi ~/.config/wofi
ln -sf ~/dotfiles/kitty ~/.config/kitty

mkdir -p ~/Pictures/Wallpapers

ln -sf ~/dotfiles/Wallpapers/* ~/Pictures/Wallpapers

mkdir -p ~/.local/bin

ln -sf ~/dotfiles/bin/wallpaper.sh ~/.local/bin/wallpaper.sh


