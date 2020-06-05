
#Check to see if this is a TMUX session
# https://unix.stackexchange.com/questions/10689
# https://github.com/conda/conda/issues/6826#issuecomment-471240590
if [ "$TERM" = "screen-256color" ] && [ -n "$TMUX" ]; then
    echo "TMUX session"
    conda deactivate; conda activate base
fi

#Check to see if this is a VS Code terminal
if [ "$TERM_PROGRAM" = 'vscode' ]; then
    echo "VS Code Terminal..."
    conda deactivate; conda activate base
fi

