function cpufreq
    set default_max_freq 3.5
    set num_args (count $argv)
    set max_freq $default_max_freq

    if [ $num_args -eq 1 ]
        if string match -qr '^[0-9.]+$' $argv
            set max_freq $argv
        end
    end
    echo 'setting cpu max freq to:' $max_freq
    for i in (seq 0 3)
        # command cpufreq-set --cpu 0 --max $argv'GHz'
        command cpufreq-set --cpu $i --max $max_freq'GHz'
    end
end
