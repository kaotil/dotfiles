# dotfiles

## screen

### .ssh/config

SSH ログインしたホストの名前をタイトルに表示する

```
LocalCommand    [ "$TERM" == 'screen' ] && echo -ne "\033k%n\033\\"
```

## tmux

### .ssh/config

SSH ログインしたホストの名前をタイトルに表示する

```
Host maeda-lpc-jenkins-test
    User            ec2-user
    HostName        13.114.125.182
    IdentityFile    ~/.ssh/fdev-nu-maeda-keypair.pem
    LocalCommand    tmux rename-window %n
```
