function haste
    set -l a
    while read line
        set a $a $line
    end
    # $a is a *list*, so use printf to output it exactly.
    #echo (count $a)
    printf "%s\n"  $a
end

