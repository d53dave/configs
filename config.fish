# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Either set envs like so...
set -gx PATH $PATH /usr/local/cuda/bin /home/dsere/miniconda3/bin

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

# Replace ls with exa
alias l="exa -l"
alias ls="exa"
alias ll="exa -ghlSmU --git"
alias lt="exa -hlT"

# Invoke some bass scripts for fun and profit
bass source ~/.nvm/nvm.sh --no-use ';' nvm use 9

source ~/.env
source (conda info --root)/etc/fish/conf.d/conda.fish
