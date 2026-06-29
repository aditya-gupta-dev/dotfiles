# Commands to run in interactive sessions can go here
if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end
    if test "$TERM" != "linux"
        starship init fish | source
        enable_transience
    end
    
    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end
    
    alias ls 'eza --icons'
    alias c "printf '\033[2J\033[3J\033[1;1H'"
    alias t "touch"
    alias bat 'bat --theme 1337'
    alias fzf "fzf --preview 'bat --theme 1337 --style=numbers --color=always --line-range :500 {}' | wl-copy"
    alias vim 'nvim'
    # Aliases
    # kitty doesn't clear properly so we need to do this weird printing
    # alias q 'qs -c ii'
    if test "$TERM" != "linux"
        alias ls 'eza --icons'
    end
    if test "$TERM" = "xterm-kitty"
        alias ssh 'kitten ssh'
    end
end
