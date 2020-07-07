# Setup fzf
# ---------
if [[ ! "$PATH" == */home/scrutiny/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/scrutiny/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/scrutiny/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/scrutiny/.fzf/shell/key-bindings.zsh"
