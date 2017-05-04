# configs

To be more hipster, ditch `zsh` and `oh-my-zsh`, and go for `fish` and `oh-my-fish`. You are so leet, you use [ripgrep](https://github.com/BurntSushi/ripgrep). Of course you do, grep is for noobs. Anyway, your `fish_right_prompt.fish` depends on it.

```
brew install fish ripgrep
curl -L https://get.oh-my.fish | fish
omf install bobthefish
```

Put `fish_right_prompt.fish` into `~/.config/fish/functions/`. Don't forget to move `rg.fish` to `$HOME/.config/fish/completions`


