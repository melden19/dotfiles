## My dotfiles
---

### Bootstrap

1. Update macOS to the latest version through system preferences
2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/melden19/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:melden19/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    cd ~/.dotfiles && ./fresh.sh
    ```

6. Restart your computer to finalize the process

### Local Settings
In case you want to override configuration or add sensitive data you can prepend the file with an underscore `_` and add it to the `.gitignore` file.

For example: 
* `zsh_custom/_secrets.zsh`
* `zsh_custom/_overrides.zsh`
### TODO
- [ ] improve ssh configuration
- [ ] review macos configuration
- [ ] oh-my-zsh
  - [ ] theme
  - [ ] plugins
- [x] local configuration management
