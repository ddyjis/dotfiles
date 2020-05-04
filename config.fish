set LC_TIME ja_JP

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Auto-start Tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end
