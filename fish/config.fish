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

# Use competitive programming template
source /etc/cp/config.fish

# Use vi key bindings
fish_vi_key_bindings

# Add path for binaries installed by uv
fish_add_path $HOME/.local/bin

# SSH AGENT shenanigans

## Make sure `AddKeysToAgent yes` is inside ssh config for automatic key adding

function fish_ssh_agent -d "make sure ssh agent is running"
    if test -z "$SSH_ENV"
        set -xg SSH_ENV $HOME/.ssh/environment
    end

    if not ssh_agent_is_started
        ssh_agent_start
    end
end

function ssh_agent_start -d "start a new ssh agent"
    ssh-agent -c | sed 's/^echo/#echo/' >$SSH_ENV
    chmod 600 $SSH_ENV
    source $SSH_ENV >/dev/null
end

function ssh_agent_is_started -d "check if ssh agent is already started"
    if test -n "$SSH_CONNECTION"
        # This is an SSH session
        ssh-add -l >/dev/null 2>&1
        if test $status -eq 0 -o $status -eq 1
            # An SSH agent was forwarded
            return 0
        end
    end

    if begin
            test -f "$SSH_ENV"; and test -z "$SSH_AGENT_PID"
        end
        source $SSH_ENV >/dev/null
    end

    if test -z "$SSH_AGENT_PID"
        return 1
    end

    ssh-add -l >/dev/null 2>&1
    if test $status -eq 2
        return 1
    end
end

fish_ssh_agent
