if [[ $(uname) == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

source "$HOME/.cargo/env"

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fnm env --use-on-cd)"

export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# Aliases
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias e="hx"
alias lg="lazygit"
