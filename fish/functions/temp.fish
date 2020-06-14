
function temp
    set temp_file (mktemp -t "temp-"(date +'%Y%m%d@%H:%M:%S')"-XXXXXX")
    ls $temp_file
    while true
        cat /sys/class/thermal/thermal_zone*/temp | tr '\n' ' ' >> "$temp_file"
        printf "\n" >> $temp_file
        sleep 2
    end
end

