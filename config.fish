set LC_TIME ja_JP

# Override conda prompt
function __conda_add_prompt; end

# Auto-start Tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end
