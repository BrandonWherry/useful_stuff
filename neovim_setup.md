# Install neovim

`sudo apt-get install neovim`

# Install nerdfont

`curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz`

`put all ttf files at ~/.fonts`


# install tmux & tmux pkg manager

`sudo apt install tmux`

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Add the following to `~/.config/tmux.conf`

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

run '~/.tmux/plugins/tpm/tpm'
