# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/Users/hiru/.zsh/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END

  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias la='ls -a'
alias ll='ls -lah'
alias d='docker'
alias dc='docker compose'

eval "$(mise activate zsh)"
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/hiru/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias dotfiles='/usr/bin/git --git-dir=/Users/hiru/.dotfiles/ --work-tree=/Users/hiru'
