# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

# prompt for screen
if [ $TERM = 'screen' ];
then
  SERVERNAME=$HOSTNAME
  PROMPT_COMMAND='echo -ne "\033k${SERVERNAME%%.*}\033\\"'
fi

# for tmux
function ssh() {
        # tmux起動時
        if [[ -n $(printenv TMUX) ]]
        then
                # 現在のwindow名を退避
                local window_name=$(tmux display -p '#{window_name}' )
                local window_id=$(tmux display -p '#{window_id}' )
                # 通常通りssh続行
                command ssh $@
                # 退避していたwindow名を復元
                tmux rename-window -t $window_id $window_name
        else
                command ssh $@
        fi
