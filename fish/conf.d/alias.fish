alias .. 'cd ..'
alias ... 'cd ../..'
alias .3 'cd ../../..'
alias .4 'cd ../../../..'
alias .5 'cd ../../../../..'

alias :q "exit"

alias cat "bat"
alias lvim '/home/qwik/.local/bin/lvim'

alias le "lsd -la --group-dirs first --almost-all"
alias ls "exa -la --git --icons"
alias lz 'eza -al --color always --group-directories-first' # my preferred listing
alias la 'eza -a --color always --group-directories-first'  # all files and dirs
alias ll 'eza -l --color always --group-directories-first'  # long format
alias lt 'eza -aT --color always --group-directories-first' # tree listing
alias l. 'eza -a | egrep "^\."'

alias pacsyu 'sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu 'sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias parsua 'paru -Sua --noconfirm'             # update only AUR pkgs (paru)
alias parsyu 'paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (paru)
alias unlock 'sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup 'sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages (DANGEROUS!)

alias mirror "sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord "sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors "sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora "sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

alias gpg-check "gpg2 --keyserver-options auto-key-retrieve --verify"
alias gpg-retrieve "gpg2 --keyserver-options auto-key-retrieve --receive-keys"


alias rr 'curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

alias mocp "bash -c mocp"
