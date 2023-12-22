if [[ $(uname) == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  [[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
fi

export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/fnm:$PATH"
export PATH="$HOME/.bin:$PATH"

source "$HOME/.cargo/env"

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fnm env --use-on-cd)"

# Aliases
alias ls="eza --icons --color=always --group-directories-first"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias e="hx"
alias lg="lazygit"

# Git aliases
alias gco='git checkout'
alias gci='git commit'
alias gst='git status'
alias gbr='git branch'
alias gdf='git diff'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
