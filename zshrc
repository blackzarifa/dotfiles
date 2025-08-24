# Ignore duplicate commands on history
setopt hist_ignore_dups

# On terminal show: "username" "path from home"$ % (shows # at the end if root)
export PROMPT='%n %~$ %# '

# fnm
eval "$(fnm env --use-on-cd)"

# Change directory functions
cdw() {
    cd ~/dev/work
    if [ $# -eq 1 ]; then
        cd "$1"
    fi
    ls
}

cdp() {
    cd ~/dev/personal
    if [ $# -eq 1 ]; then
        cd "$1"
    fi
    ls
}
