###############################################################################
# NVM
###############################################################################

# enables nvm lazy loading, speed up shell start time
zstyle ':omz:plugins:nvm' lazy yes

# autoload node version if .nvmrc file preset in working directory, disabled because of the slow shell start
# zstyle ':omz:plugins:nvm' autoload yes