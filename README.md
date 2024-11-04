# Setup

## Installation

- EndeavourOS
- Pick GNOME Desktop
- Install


- Git clone the dotfiles repository (this one)
- do initial setup
- select dotfiles with `local.toml`
- deploy dotfiles with `dotter deploy`
- add ssh key via croc `croc send ~/.ssh/id_ed25519` on the other machine
- install other applications (optionally install hyprland)

## Packages

### Initial Setup
- paru: `yay paru-bin`, package manager
- dotter: `paru dotter-rs-bin`, dotfiles manager

### Shell
- helix: `paru helix`, editor
- fish: `paru fish`, shell
- starship: `paru starship`, shell prompt
- zoxide: `paru zoxide`, modern cd
- bat: `paru bat`, modern cat
- croc: `paru croc`, copy files securely
- jq: `paru jq`, pare json

### Applications
- brave: `paru brave-bin`, browser
  - go to settings -> sync -> start using sync and join the sync chain
  - enable sync all to use the same settings (might take some time to update)
  - login to bitwarden
  - set default search engine to duckduckgo
- kitty: `paru kitty`, terminal
- spotify: `paru spotify-launcher`, music service
- discord: `paru discord`, communication
- slack: `paru slack-wayland`, communication

### Dev Environments
- rust: `paru rustup` -> `rustup default stable`, programming language
- typst: `paru typst`, `paru tinymist-bin`, `paru typstyle`, `paru zathura`, `paru zathura-pdf-mupdf`
- python: `paru uv`, `paru python-lsp-server`, `paru python-lsp-ruff`

## Hyprland

- Switch LoginManager to SDDM (switch in the welcome screen)
- install hyprland: `paru hyprland`
- if nvidia:
  - install nvidia drivers: `paru nvidia-dkms`
  - install utils: `paru lib32-nvidia-utils`
  - force nvidia early load: add `force_drivers+= " nvidia nvidia_modeset nvidia_uvm nvidia_drm "` to `/etc/dracut.conf.d/myflags.conf`
  - add kernel settings: add `options nvidia_drm modeset=1 fbdev=1` into `/etc/modprobe.d/nvidia.conf`
  - rebuild the initramfs: `sudo dracut --hostonly /boot/initramfs-linux.img --force`
  - add hardware support: `paru libva-nvidia-driver`
- gtk nordic theme: `paru nordic-theme`
- xdg desktop portal: `paru xdg-desktop-portal-hyperland`
- auth agent: `paru hyprpolkitagent`
- add qt5: `paru qt5-wayland`
- add qt6: `paru qt6-wayland`
- add notifications: `paru dunst`
- add sddm theme: `paru sddm-sugar-dark`, add `[Theme]\nCurrent=sugar-dark` into `/etc/sddm.conf.d/sddm.conf`
- install rofi: `paru rofi-wayland`
- install calc: `paru rofi-calc-git`
- install clipboard: `paru wl-clipboard`, `paru clipse`
- install power menu: `paru rofi-power-menu` (TODO: recreate own version of this with hyprlock)
- install hyprlock: `paru hyprlock` (TODO: configure it)
- background image: `paru wpaperd`
- waybar: `paru waybar` 
- icons + font: `paru ttf-firacode-nerd`
- blue-light-filter: `paru hyprshade`
- backups: `paru timeshift` (needs `paru xorg-xhost` for the gui), then configure in the gui
  
