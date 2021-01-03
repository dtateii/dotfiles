# Add 'z' plugin
. ~/tools/z/z.sh

# Fix tty color
export TERM="xterm-256color"

# Use a service to start ssh-agent
# Needed for enabled systemd user service ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Add commonly used identities
#ssh-add ~/.ssh/pantheon_nji
ssh-add ~/.ssh/github
#ssh-add ~/.ssh/acquia

# Powerline
#powerline-daemon -q
#. /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

# Powerlevel9k theme config
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9k_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰- $ "
POWERLEVEL9k_DIR_FOREGROUND='226'
POWERLEVEL9k_DIR_BACKGROUND='000'
source ~/.config/zsh/themes/powerlevel9k/powerlevel9k.zsh-theme

# Export Android SDK Path
export ANDROID_SDK_ROOT="/home/dtateii/Android/Sdk"
export ANDROID_HOME="/home/dtateii/Android/Sdk"

### EXPORT PATHS

# Pantheon Terminus
PATH="/home/dtateii/tools/terminus/vendor/bin:$PATH"
# PHPCS
PATH="/home/dtateii/.config/composer/vendor/bin:$PATH"
# NPM
PATH="/home/dtateii/.npm-global/bin:$PATH"
# Android Platform Tools
PATH="/home/dtateii/Android/Sdk/platform-tools:/home/dtateii/Android/Sdk/emulator:$PATH"
# INSTALL DIR FOR PIP
PATH="/home/dtateii/.local/bin:$PATH"

### ALIASES

# VPN - Nord
alias vpn='sudo openvpn /etc/openvpn/ovpn_tcp/us2970.nordvpn.com.tcp.ovpn'
# curl --silent "https://api.nordvpn.com/v1/servers/recommendations" | jq --raw-output 'limit(1;.[]) | .hostname'

# Bluetooth mouse
alias mouse='bluetoothctl -- connect D5:6D:0E:D6:6F:B3'

# Bluetooth headphones
alias buds='bluetoothctl -- connect 38:F3:2E:0D:FD:91'
alias cans='bluetoothctl -- connect 44:5E:CD:0F:F7:87'

# Manage screens on connect / disconnect
alias x='sh /home/dtateii/tools/x/manage_monitors.sh'

# Git versioning dotfiles
# Per this approach https://news.ycombinator.com/item?id=11070797
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'