source ~/.config/fish/conf.d/alias.fish
source ~/.config/fish/conf.d/git.fish
source ~/.config/fish/functions/fn.fish

set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x TMUX_CONFIG ~/.config/tmux/tmux.conf
set -x BAT_THEME "Catppuccin Mocha"

# -- fzf catppuccin theme
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

if status is-interactive
  # Commands to run in interactive sessions can go here
  set -x GPG_TTY (tty)
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
  gpgconf --launch gpg-agent
end


set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

starship init fish | source
