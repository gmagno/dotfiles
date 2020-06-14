# function my_preexec --on-event fish_preexec
# whatever needs to be run before the command
# end

function my_postexec --on-event fish_postexec
    set arg0 (echo $argv | cut -d ' ' -f 1)
    # send notification when command starts with `time`
    if [ "$arg0" = "time" ]; notify-send -t 500 -u critical Done! "$argv"; end
    if [ -n "$argv" ]; paplay /usr/share/sounds/ubuntu/stereo/button-toggle-off.ogg; end
end

source /etc/grc.fish
set -gx EDITOR vim
set -gx PAGER most
set -gx BAT_PAGER "less -XRF"

set -x PATH $PATH /usr/local/go/bin/
set -x GOPATH $HOME/go

source /opt/bitwarden/session.sh




#set -gx PATH /usr/local/cuda-10.1/bin $PATH
#set -gx PATH /usr/local/cuda-10.1/NsightCompute-2019.3 $PATH
#set -gx LD_LIBRARY_PATH /usr/local/cuda-10.1/lib64 $LD_LIBRARY_PATH



# my conda initialize fix
#eval /home/gm/miniconda3/bin/conda "shell.fish" "hook" $argv | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/gm/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# pyenv (should be placed toward the end of the shell configuration file since it manipulates PATH during the initialization)
status --is-interactive; and source (pyenv init -|psub)
##status --is-interactive; and pyenv init - | source
#status --is-interactive; and pyenv virtualenv-init - | source


