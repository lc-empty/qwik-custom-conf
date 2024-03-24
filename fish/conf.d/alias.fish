alias .. 'cd ..'
alias ... 'cd ../..'
alias .3 'cd ../../..'
alias .4 'cd ../../../..'
alias .5 'cd ../../../../..'

alias :q exit

alias cat bat
alias lvim '/home/qwik/.local/bin/lvim'

alias ls "exa -la --git --icons"
alias lt 'eza -aT --color always --group-directories-first' # tree listing

alias pacsyu 'sudo pacman -Syu' # update only standard pkgs
alias pacsyyu 'sudo pacman -Syyu' # Refresh pkglist & update standard pkgs
alias unlock 'sudo rm /var/lib/pacman/db.lck' # remove pacman lock
alias cleanup 'sudo pacman -Rns (pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)

alias mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord "sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors "sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora "sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

alias gpg-check "gpg2 --keyserver-options auto-key-retrieve --verify"
alias gpg-retrieve "gpg2 --keyserver-options auto-key-retrieve --receive-keys"

alias mocp "bash -c mocp"
