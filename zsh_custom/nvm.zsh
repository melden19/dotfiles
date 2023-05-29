# # if brew installed
# if type brew > /dev/null; then
# 	# ensure nvm directory exists
# 	mkdir -p ~/.nvm

# 	# nvm.sh sourcing takes around 0.5-1s, it speed ups shell start
# 	lazy_load_nvm() {
# 		unset -f node nvm
# 		export NVM_DIR=~/.nvm
# 		local nvm_brew_dir=$(brew --prefix nvm)
# 		[[ -s "$nvm_brew_dir/nvm.sh" ]] && source "$nvm_brew_dir/nvm.sh"
# 	}

# 	node() {
# 		lazy_load_nvm

# 		# install latest lts node if not installed
# 		if ! type "node" > /dev/null && type "nvm" > /dev/null; then
# 			echo "WARN: node is not installed"
# 			nvm install --lts
# 		fi

# 		node $@
# 	}

# 	nvm() {
# 		lazy_load_nvm
# 		nvm $@
# 	}
# fi
