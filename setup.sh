#!/bin/bash

source bash.d/100-platform-detection.bash
source bash.d/102-path.bash
source bash.d/104-shopt.bash
source bash.d/124-date-time.bash
source bash.d/106-temp.bash
source bashrc.d/108-shortcuts-dir.bash

case "$PLATFORM" in 
    mac)
        echo "Platform is Mac"
        set bash_file="${HOME}/.bash_profile"
        echo "Bash file is ${bash_file}"
        ;;
    linux)
        echo "Platform is Linux"
        set bash_file="${HOME}/.bashrc"
        echo "Bash file is ${bash_file}"
        ;;
esac

if [ -e ${bash_file} ]; then
    declare tmpfile=$(mktempname "${bash_file}.bak")
    echo "Backing up current bash configuration to ${tmpfile}"
    cp -v $bash_file ${tmpfile}
fi
ln -sf .bash_profile "${bash_file}"
ln -sf .bash_aliaese "${HOME}/.bash_aliases"

if [[ ! -d "${HOME}/.config/bash" ]]; then
    mkdir -p "${HOME}/.config/bash"
fi
ln -sf bash.d/* "${HOME}/.config/bash/."

echo "Finished configuring bash"
