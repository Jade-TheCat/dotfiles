# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jade/.zshrc'

export ZSH_AUTOSUGGEST_STRATEGY=(completion history)
export ANSI_MOTD_DISABLE_LINE_WRAPPING=1
export ANSI_MOTD_RATE_LIMIT_OUTPUT="8k"

autoload -Uz compinit
compinit
# End of lines added by compinstall

export ZSH_TMUX_AUTOSTART=true

source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GODOT4_BIN='/usr/bin/godot'

# Created by `pipx` on 2023-09-27 21:42:55
export PATH="$PATH:/home/jade/.local/bin:/usr/local/osx-ndk-x86/bin:$HOME/.cargo/bin/wasm-pack"
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"


export OSXCROSS_ROOT="/usr/local/osx-ndk-x86"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export GPG_TTY=$(tty)
