# Enable starship
starship init fish | source

# Disable fish welcome message
set fish_greeting

# Helix config
alias hx helix
setenv EDITOR helix

# Setup zoxide
zoxide init fish | source
