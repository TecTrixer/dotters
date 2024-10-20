# Setup

## Installation

- EndeavourOS
- Pick GNOME Desktop
- Install

- Switch LoginManager to SDDM (switch in the welcome screen)

- Git clone the dotfiles repository (this one)
- do initial setup
- select dotfiles with `local.toml`
- deploy dotfiles with `dotter deploy`
- add ssh key via croc `croc send ~/.ssh/id_ed25519` on the other machine

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

### Dev Environments
- rust: `paru rustup` -> `rustup default stable`, programming language
