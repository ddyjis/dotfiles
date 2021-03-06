set LC_TIME ja_JP

# Override conda prompt
function __conda_add_prompt; end

# Auto-start Tmux
if status is-interactive
and not set -q TMUX
    tmux has-session; and tmux a -t 0; or tmux new
end

# Fish welcome message
function fish_greeting
    echo -e "IT IS DANGEROUS TO GO ALONE! TAKE THIS. ✝"
end


# The next line updates PATH for the Google Cloud SDK.
set PATH $PATH /Users/tonyli/google-cloud-sdk/bin
set -g fish_user_paths "/usr/local/opt/openjdk@11/bin" $fish_user_paths

function fish_prompt
    set -l triforce_color d4ce46
    set -l botw_tunic 38b6f1

    set -g __fish_git_prompt_show_informative_status true
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showstashstate true
    set_color $botw_tunic; echo "  " (prompt_pwd) (fish_git_prompt)
    set_color normal
    set_color $triforce_color; echo -n " ▲ "
end
