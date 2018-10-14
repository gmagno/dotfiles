function ranger
    command ranger --choosedir=$HOME/.rangerdir $argv
    set LASTDIR (cat $HOME/.rangerdir)
    cd "$LASTDIR"
end

