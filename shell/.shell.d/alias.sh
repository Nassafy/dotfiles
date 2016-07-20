alias :q=exit
alias irb=pry
alias ccat=pygmentize
alias problemhelper="time problemhelper"
alias ph=problemhelper
alias tls="tmux ls"
alias tswitch="tmux switch -t"
alias tkill="tmux kill-session -t"
alias rm="rm -I"
alias clip="xclip -selection clipboard"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias startx="xinit"
test "$(uname)" = "FreeBSD" && alias tput="/usr/local/bin/tput"

testnet() {
    ping duckduckgo.com
}

ghclone() {
    git clone https://github.com/${1}.git ${2}
}

transfer() {
    local tmpfile="$(mktemp -t tranferXXX)"
    curl --progress-bar --upload-file $1 "https://transfer.sh/$(basename $1)" >> $tmpfile
    cat $tmpfile
    rm -rf $tmpfile
    unset tmpfile
}

pi() {
    ssh tudoo $1
}

push() {
    local branch="${1:-master}"
    git remote | while read -r line; do
        git push $line $branch
    done
}

radio() {
    mpv http://radio.2f30.org:8000/live.mp3
}

trinitas() {
    mpv http://live.radiotrinitas.ro:8003
}

les() {
    test -d "$1" && ls -al "$1" || less "$1"
}

x0st() {
    curl -F"file=@${1}" https://0x0.st
}

mtp() {
    sudo simple-mtpfs /mnt -o allow_other
}
