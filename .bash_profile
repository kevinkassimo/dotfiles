# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# MY PATHS
PATH="/Users/kevinqian/bin:${PATH}"


# Setting JSC for simple console display
# alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc

# Changing patterns of rm to enable recovery
mkdir -p ~/.mytrash
alias del=trash
alias delist='ls ~/.mytrash'
alias undel=undelfile
alias ct=cleartrash
undelfile()
{
    mv -i ~/.mytrash/$@ ./
}
trash()
{
    mv $@ ~/.mytrash/
}
cleartrash()
{
    read -p "Clear Trash: confirm clear trash?[n]" confirm
    [ $confirm == 'y' ] || [ $confirm == 'Y' ] && /bin/rm -ri ~/.mytrash/*
}


# Setting common UCLA Linux Server Login ports
alias seas1="ssh kun@lnxsrv01.seas.ucla.edu"
alias seas2="ssh kun@lnxsrv02.seas.ucla.edu"
alias seas3="ssh kun@lnxsrv03.seas.ucla.edu"
alias seas4="ssh kun@lnxsrv04.seas.ucla.edu"
alias seas7="ssh kun@lnxsrv07.seas.ucla.edu"
alias seas9="ssh kun@lnxsrv09.seas.ucla.edu"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export NODE_PATH=/usr/local/lib/node_modulesexport NODE_PATH=/usr/local/lib/node_modules
export NODE_PATH=/usr/local/lib/node_modulesexport NODE_PATH=/usr/local/lib/node_modules

# Setting the terminal PS style
PS1="[\u \w]$ "

# OPAM configuration
. /Users/kevinqian/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true


# AGNOSTER BASH THEME
export THEME=$HOME/TerminalThemes/agnoster/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

# COLORING
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -Gp'

# FUCK configuration
eval $(thefuck --alias fuck)

######################### MY PROGRAMS

# DOT configuration & aliasing (see .dot/dot.sh, the script I wrote to manage dotfiles without worrying soft links)
alias dot='~/.dot/dot.sh'

# SEASHelper config & aliasing
alias seas="/Users/kevinqian/MyProgram/SEASHelper/seas_mac"

# Replace Vim with MacVim
alias vim='mvim -v'
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH


# GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Modify emacs to reflect on the lastest emacs build
alias emacs="/usr/local/Cellar/emacs/*/bin/emacs"

# Set default editor
export EDITOR="/usr/local/bin/mvim"
