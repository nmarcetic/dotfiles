# Path to Oh My Fish install.
set -gx OMF_PATH /home/nmarcetic/.local/share/omf

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG /home/nmarcetic/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Set golag path

# colon separated list of places were one might find go source code or installed packages
# first path is used for package installation
set -x GOPATH $HOME/go

# So we can run go commands and go programs we have compiled ourselves
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# Set home bin path, for custom executables
set PATH ~/bin $PATH

set -x PATH TH $PATH /snap/bin

set -x PATH $PATH /usr/local/kubebuilder/bin

#ifstatus is-interactive
#  and not set -q TMUX
#    exec tmux
#end
#
# set alias for home dotafiles config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
