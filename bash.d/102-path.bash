
export PATH=\
/usr/local/opt/coreutils/libexec/gnubin:\
/usr/local/go/bin:\
/usr/local/tinygo/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/usr/games:\
/usr/sbin:\
/usr/bin:\
/snap/bin:\
/sbin:\
/bin

case "$PLATFORM" in
    mac)
        export PATH=$PATH:'/Users/jmiller/.vimpkg/bin'
        export PATH=$PATH:"/usr/local/opt/openssl/bin"
        #Add homebrews sbin to the path
        export PATH=$PATH:"/usr/local/sbin"
        # Postgres
        export PATH=$PATH:"/Library/PostgreSQL/11/bin"

        # >>> conda initialize >>>
        # !! Contents within this block are managed by 'conda init' !!
        __conda_setup="$('/Users/jmiller/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
        if [ $? -eq 0 ]; then
            eval "$__conda_setup"
        else
            if [ -f "/Users/jmiller/miniconda3/etc/profile.d/conda.sh" ]; then
                . "/Users/jmiller/miniconda3/etc/profile.d/conda.sh"
            else
                export PATH="/Users/jmiller/miniconda3/bin:$PATH"
            fi
        fi
        unset __conda_setup
        # <<< conda initialize <<<

        ;;
    linux)
        ;;
esac


alias path='echo -e ${PATH//:/\\n}' # human readable path
