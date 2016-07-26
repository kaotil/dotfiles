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
