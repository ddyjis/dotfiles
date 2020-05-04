set LC_TIME ja_JP

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
# Override conda prompt
function __conda_add_prompt; end

# Auto-start Tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# Fish theme
omf install bobthefish
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
