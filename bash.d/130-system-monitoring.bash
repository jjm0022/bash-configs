
alias bat='\
  upower -i /org/freedesktop/UPower/devices/battery_BAT0 | \
  grep -E "state|to\ full|percentage"'
alias free='free -h'
alias df='df -h'
alias syserrors="sudo journalctl -p 3 -xb"
alias sysderrors="sudo systemctl --failed"
alias top="gotop -c solarized -f -r .33 -m"

listening () {
  case "$PLATFORM" in
    mac)                                 # TODO rewrite with bashgrep 
      netstat -an -ptcp | grep LISTEN
      lsof -i -P | grep -i "listen"
      ;;
    *) netstat -tulpn |grep LISTEN ;;
  esac
} && export -f listening

sudolistening () {
  case "$PLATFORM" in
    mac)                                 # TODO rewrite with bashgrep 
      sudo netstat -an -ptcp | grep LISTEN
      sudo lsof -i -P | grep -i "listen"
      ;;
    *) sudo netstat -tulpn |grep LISTEN ;;
  esac
} && export -f sudolistening


