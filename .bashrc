if [[ $(uname) == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

source "$HOME/.cargo/env"

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fnm env --use-on-cd)"

export BUN_INSTALL="$HOME/.bun" 
export DENO_INSTALL="/Users/brielov/.deno"
export PATH=$BUN_INSTALL/bin:$PATH
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# Aliases
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
. "$HOME/.cargo/env"
alias e="hx"
alias lg="lazygit"

