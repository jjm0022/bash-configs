# Directory (cd) shortcuts. Using associative arrays pointing to
# environment variable names cuz names might not always match (otherwise
# would just ${foo^^} them). Might want to use a different env variable
# name at some point. In addtion to the lowercase name an identical copy
# of the alias is created with `cd` at the beginning to provide more
# flexibility when there is a private override (schedule might open the
# schedule instead of cd-ing into it while cdschedule always cds).

declare -a directories=(
  [repos]=REPOS
  [config]=CONFIG
  [personal]=PERSONAL
  [private]=PRIVATE
  [schedule]=SCHEDULE
  [blog]=BLOG
  [tokens]=TOKENS
  [downloads]=DOWNLOADS
  [desktop]=DESKTOP
  [pictures]=PICTURES
  [videos]=VIDEOS
  [images]=DISKIMAGES
  [vmachines]=VMACHINES
  [readme]=README
  [documents]=DOCUMENTS
)

for k in "${!directories[@]}"; do 
  v=${directories[$k]}
  alias $k='\
    if [[ -n "$'$v'" ]];\
      then cd "$'$v'";\
    else\
      warnln "\`\$'$v'\` not set. Consider adding to ~/.bash_{personal,private}.";\
    fi'
  # nice alternative when overriding others overriden
  alias cd$k='\
    if [[ -n "$'$v'" ]];\
      then cd "$'$v'";\
    else\
      warnln "\`\$'$v'\` not set. Consider adding to ~/.bash_{personal,private}.";\
    fi'
done

# Detect reasonable defaults (override in .bash_private). You'll want to
# set CONFIG in your PERSONAL or PRIVATE locations. See the following for
# examples of how to do this:
#
#    https://github.com/rwxrob/config-personal-sample
#    https://github.com/rwxrob/config-private-sample

declare -a defaults=(
  [DOWNLOADS]=~/Downloads
  [REPOS]=~/Documents/git
  [DESKTOP]=~/Desktop
  [DOCUMENTS]=~/Documents
  #[README]=~/Documents/README   # README WorldPress content
  #[PICTURES]=~/Pictures
  #[VIDEOS]=~/Videos
  #[DISKIMAGES]=~/DiskImages     # linux, arch, raspberrian, etc.
  #[VMACHINES]=~/VMachines       # vmware, virtual box, etc.
  [TRASH]=~/Trash               # trash (see trash)
) 

for k in "${!defaults[@]}"; do
  v=${defaults[$k]}
  export $k=$v
done

