
set fish_greeting


export BUN_INSTALL="$HOME/.bun"
export GO_BIN="$HOME/go/bin"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$GO_BIN:$PATH"

alias ls 'eza --icons'
alias c "printf '\033[2J\033[3J\033[1;1H'"
alias t "touch"
alias bat 'bat --theme 1337'
alias fzf "fzf --preview 'bat --theme 1337 --style=numbers --color=always --line-range :500 {}' | wl-copy"
alias vim 'nvim'
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


# Added by Antigravity CLI installer
set -gx PATH "/home/aditya/.local/bin" $PATH
