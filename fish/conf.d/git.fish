alias gs "git status -sb"
alias gl "git log --graph --oneline --all"
alias gd "git diff"
alias gc "git commit"
alias gup "git pull"
alias gpu "git push"
alias gb "git branch"
alias gco "git checkout"
alias gm "git merge"
alias gst "git stash"

function git_status
    echo "=== Git Status ==="
    git status --short --branch
    echo "=== Changes to be committed ==="
    git diff --cached --name-status
    echo "=== Changes not staged for commit ==="
    git diff --name-status
    echo "=== Untracked files ==="
    git ls-files --others --exclude-standard
end

function git_diff_commit
    git diff $argv[1]..$argv[2]
end
