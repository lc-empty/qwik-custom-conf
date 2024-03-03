source ~/.config/fish/conf.d/alias.fish
source ~/.config/fish/conf.d/git.fish
source ~/.config/fish/functions/fn.fish

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x TMUX_CONFIG ~/.config/tmux/tmux.conf

set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

starship init fish | source
