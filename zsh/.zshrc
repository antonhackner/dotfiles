# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setopt appendhistory
setopt sharehistory
setopt incappendhistory

#aliases
alias vim="nvim"
alias vi="nvim"

#binds
bindkey "^[[3~" delete-char
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^H' backward-kill-word
bindkey "^[[3;5~" kill-word

#exports
export PATH="$PATH:/home/anton/.dotnet/tools"
export PATH="/home/anton/.local/bin:$PATH"
export PATH=$HOME/.config/rofi/bin:$PATH
export EDITOR=nvim

# atuin
eval "$(atuin init zsh)"

# smolvm
export PATH="/home/anton/.local/bin:$PATH"
