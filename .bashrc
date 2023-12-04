eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fnm env --use-on-cd)"

export BUN_INSTALL="$HOME/.bun" 
export PATH=$BUN_INSTALL/bin:$PATH

# Aliases
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
. "$HOME/.cargo/env"
alias e="hx"
alias lg="lazygit"

# Completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export DENO_INSTALL="/Users/brielov/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH="$HOME/.bin:$PATH"
