function fish_prompt
    # Username@hostname
    set_color green
    echo -n (whoami)"@"(hostname)

    # Current directory
    set_color blue
    echo -n " "(prompt_pwd)

    # Git branch (if inside repo)
    set_color yellow
    echo -n (fish_git_prompt)

    # Reset + arrow
    set_color normal
    echo -n "> "
    echo
    echo -n "❯ "
end
