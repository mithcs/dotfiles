#
# Executes commands at the start of an interactive session.
#

## Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## Prevent execution of certain commands over ssh
if [ -n "$SSH_CONNECTION" ]; then
    alias rm="echo 'Execution of rm is disabled: '"
    alias chmod="echo 'Execution of chmod is disabled: '"
    
    echo "SSH connection is successful"
fi

## Alias-es

# Verbosity
alias \
    cp="cp -iv" \
    mv="mv -iv" \
    rm="rm -vI"

# Colorize
alias \
    ls="ls -hN --color=auto --group-directories-first" \
    grep="grep --color=auto" \
    diff="diff --color=auto"

# Git
alias \
    ga="git add" \
    gc="git commit" \
    gp="git push"

# Others
alias wireshark='sudo wireshark' \
    cpc='xclip -selection clipboard' \
    rm='rm -I' \
    mpy='source $HOME/venv/bin/activate' \
    mntsda4='sudo mount.ntfs-3g /dev/sda4 /mnt/' \
    xo='xdg-open' \
    ws='cd $HOME/Workspace/'

# Sass watcher
# swatch() {
#     if [[ $# -ne 2 ]]; then
#         echo "Usage: swatch [input] [output]"
#         return 1
#     fi
#     echo "Watching $1..."
#     while true; do
#         inotifywait "$1" -e close_write -qq
#         sassc "$1" "$2" --style compressed
#         echo "👍️"
#     done
# }

# # Flutter
# export PATH="$PATH:/opt/flutter/bin"

# # Java Options
# export JAVA_TOOL_OPTIONS='-Xmx1024m -Xms256m'

# Android Setup
# export ANDROID_SDK_ROOT=/opt/android-sdk
# export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
# export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
# export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
#
