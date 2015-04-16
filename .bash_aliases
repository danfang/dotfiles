# -------------
#  Mac Only
# -------------
alias gd='cd ~/Google\ Drive/'

# -----------
#    UNIX
# ----------
alias c='clear'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias ll='ls -lhA'
alias attu='ssh danfang@attu.cs.washington.edu'

# recursive ls
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
