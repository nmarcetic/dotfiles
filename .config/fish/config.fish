# Path to Oh My Fish install.
set -gx OMF_PATH /home/nmarcetic/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/nmarcetic/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

eval (python -m virtualfish)

# Set golag path

# colon separated list of places were one might find go source code or installed packages
# first path is used for package installation
set -x GOPATH $HOME/Work/golang

# So we can run go commands and go programs we have compiled ourselves
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin
