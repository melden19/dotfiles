# Load dotfiles binaries
export PATH="$DOTFILES/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Load Go binaries
export PATH=$(go env GOPATH)/bin:$PATH

# bun
export PATH="$BUN_INSTALL/bin:$PATH"
