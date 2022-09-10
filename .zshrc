# ------------------------------------------------------------------------
# alias
# ------------------------------------------------------------------------

source $ZSHRC_DIR/alias.zsh

# ------------------------------------------------------------------------
# bindkey
# ------------------------------------------------------------------------

source $ZSHRC_DIR/bindkey.zsh

# ------------------------------------------------------------------------
# gh 補完関数のため
# ------------------------------------------------------------------------
eval "$(gh completion -s zsh)" 

# Homebrew setting
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
