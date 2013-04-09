export PATH=/usr/local/bin:/usr/local/sbin:$PATH

[[ -s ~/.bashrc ]] && source ~/.bashrc


[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Tell ls to show some color
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
