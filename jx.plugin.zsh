# Setup auto-completion for jx, the command line interface for Jenkins-X 3
#
# Author: https://github.com/haysclark

if (( $+commands[jx] )); then
  # TODO: 2022-01-05: remove this block
  # remove old generated files
  command rm -f "$ZSH_CACHE_DIR/jx_completion"

  # TODO: 2022-01-05: remove this bit of code as it exists in oh-my-zsh.sh
  # Add completions folder in $ZSH_CACHE_DIR
  command mkdir -p "$ZSH_CACHE_DIR/completions"
  (( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

  # If the completion file doesn't exist yet, we need to autoload it and
  # bind it to `jx`. Otherwise, compinit will have already done that.
  if [[ ! -f "$ZSH_CACHE_DIR/completions/_jx" ]]; then
    typeset -g -A _comps
    autoload -Uz _jx
    _comps[jx]=_jx
  fi

  jx completion zsh >! "$ZSH_CACHE_DIR/completions/_jx" &|
fi
