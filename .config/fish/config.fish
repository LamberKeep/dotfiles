if status is-interactive
	# There something?
end

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "$HOME/.micromamba/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "$HOME/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f $HOME/micromamba/bin/conda
    eval $HOME/micromamba/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "$HOME/micromamba/etc/fish/conf.d/conda.fish"
        source "$HOME/micromamba/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "$HOME/micromamba/bin" $PATH
    end
end
# <<< conda initialize <<<

