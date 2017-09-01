# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Either set envs like so...
set -gx PATH $PATH /usr/local/cuda/bin

# Replace ls with exa
alias ls="exa"
alias ll="exa -ghlSmU --git"
alias lt="exa -htl"

# Or write them as `setenv NAME VAL` into ~/.env
# setenv now works as it would in bash/zsh, yay
function setenv
    if [ $argv[1] = PATH ]
        # Replace colons and spaces with newlines
        set -gx PATH (echo $argv[2] | /usr/bin/tr ': ' \n)
    else
        set -gx $argv
    end
 end

source ~/.env
