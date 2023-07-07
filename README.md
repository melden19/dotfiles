## My dotfiles
---

### Bootstrap

1. Update macOS to the latest version through system preferences
2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/driesvints/dotfiles/HEAD/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` with:

    ```zsh
    git clone --recursive git@github.com:driesvints/dotfiles.git ~/.dotfiles
    ```

4. Run the installation with:

    ```zsh
    cd ~/.dotfiles && ./fresh.sh
    ```

6. Restart your computer to finalize the process

### Local Settings
In case you want to override configuration or add sensitive data to it you can use the following files format to store it without tracking it in git.
*  `_*.local.*`
*  `_*.local`

For example: 
* `zsh_custom/_secrets.local.zsh`
* `zsh_custom/_overrides.local.zsh`
### TODO
- [ ] improve ssh configuration
- [ ] review macos configuration
- [ ] oh-my-zsh
  - [ ] theme
  - [ ] plugins
- [x] local configuration management
