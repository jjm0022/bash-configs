
case $- in
    *i*) ;;
    *) return
esac

source ~/.config/bash/100-platform-detection.bash
#source ~/.config/bash/101-terminal-detection.bash
source ~/.config/bash/102-path.bash
#source ~/.config/bash/104-shopt.bash
source ~/.config/bash/106-temp.bash
#source ~/.config/bash/108-shortcuts-dir.bash
source ~/.config/bash/114-markdown.bash
source ~/.config/bash/116-open.bash
source ~/.config/bash/118-prompts.bash
source ~/.config/bash/122-subshells-suck.bash
source ~/.config/bash/124-date-time.bash
source ~/.config/bash/130-system-monitoring.bash
source ~/.config/bash/132-ls-dircolors.bash
source ~/.config/bash/146-term-color.bash
source ~/.config/bash/148-cmd-prompt.bash
source ~/.config/bash/156-history.bash
source ~/.config/bash/160-conda.bash

# Set user defined env variables
if [ -f ~/.bash_env_vars ]; then
    source ~/.bash_env_vars
fi

# Run Aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi



