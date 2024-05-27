eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fnm env --use-on-cd)"

# Aliases
alias cat="bat"
alias e="helix"
alias lg="lazygit"
alias ll="eza -alF --icons --color=always --group-directories-first"
alias ls="eza --icons --color=always --group-directories-first"
alias md="glow"
alias src="source $HOME/.bashrc"

# Git aliases
alias gco='git checkout'
alias gci='git commit'
alias gst='git status'
alias gbr='git branch'
alias gdf='git diff'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

export EDITOR="helix"
export PATH="$HOME/.bin:$PATH"
