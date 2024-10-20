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

### Applications
- brave: `paru brave-bin`, browser
  - go to settings -> sync -> start using sync and join the sync chain
  - enable sync all to use the same settings (might take some time to update)
  - login to bitwarden
  - set default search engine to duckduckgo
- kitty: `paru kitty`, terminal
- spotify: `paru spotify-launcher`, music service
- discord: `paru discord`, communication

### Dev Environments
- rust: `paru rustup` -> `rustup default stable`, programming language

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
  
