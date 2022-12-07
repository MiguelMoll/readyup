set -U fish_greeting

# env vars
set -x GOPATH $HOME/code/go
set -x FZF_DEFAULT_OPTS "--preview 'bat --color=always {}'"
set -x FZF_DEFAULT_COMMAND "fd --type f"


# updating $PATH
fish_add_path $GOPATH/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path /usr/local/go/bin


# at the end
starship init fish | source
