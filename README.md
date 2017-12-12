# configs

To be more hipster, ditch `zsh` and `oh-my-zsh`, and go for `fish` and `oh-my-fish`. You are so leet, you use [ripgrep](https://github.com/BurntSushi/ripgrep). Of course you do, grep is for noobs. Anyway, your `fish_right_prompt.fish` depends on it.

```
<package-manager> install curl fish ripgrep unzip xbindkeys

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install oh-my-fish & theme
curl -L https://get.oh-my.fish | fish
omf install bobthefish

# Install fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Install bass, a bash script wrapper for fish
fisher edc/bass 

# Install exa
curl -O https://the.exa.website/releases/exa-linux-x86_64-0.7.0.zip
unzip exa-linux-x86_64-0.7.0.zip && mv exa-linux-x86_64 /usr/local/bin/exa
```

Put `fish.config` into `~/.config/fish`

Put `fish_right_prompt.fish` into `~/.config/fish/functions/`. 

Don't forget to copy `rg.fish` from `$RG_INSTALL_PATH/share/fish/vendor_completions.d/rg.fish` to `$HOME/.config/fish/completions`. 


