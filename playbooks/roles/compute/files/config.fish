set -U fish_greeting

# env vars
set -x GOPATH $HOME/code/go


# updating $PATH
fish_add_path $GOPATH/bin
fish_add_path $HOME/.cargo/bin
fish_add_path /usr/local/go/bin


# at the end
starship init fish | source
