
###############################################################################
# NVM	https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nvm
###############################################################################


# enables nvm lazy loading, speed up shell start time
zstyle ':omz:plugins:nvm' lazy yes

# defines extra commands that will also trigger nvm lazy load
zstyle ':omz:plugins:nvm' lazy-cmd codefresh-dev

# autoload node version if .nvmrc file preset in working directory, disabled because of the slow shell start
# zstyle ':omz:plugins:nvm' autoload yes