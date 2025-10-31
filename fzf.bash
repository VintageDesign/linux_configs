# Setup fzf
# ---------
if [[ ! "$PATH" == */home/riley/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/riley/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/riley/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/riley/.fzf/shell/key-bindings.bash"
