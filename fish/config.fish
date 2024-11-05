# Enable starship
starship init fish | source

# Disable fish welcome message
set fish_greeting

# Helix config
alias hx helix
setenv EDITOR helix

# Setup zoxide
zoxide init fish | source

# Add path for binaries installed by cargo
fish_add_path $HOME/.cargo/bin

# Add path for binaries installed by pnpm
setenv PNPM_HOME $HOME/.local/share/pnpm
fish_add_path $PNPM_HOME
