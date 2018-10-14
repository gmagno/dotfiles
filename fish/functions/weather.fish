function weather
    set num_args (count $argv)
    set default_location ria
    set path $default_location

    if [ $num_args -eq 1 ]
        set path $argv
    end
    curl wttr.in/$path
end
