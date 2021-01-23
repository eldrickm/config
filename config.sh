# Requirements
# - git
# - vim 8

# Installs zsh
sudo apt-get install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy over zsh settings
cp .zshrc ~/.zshrc

# Copy /config/.vimrc to ~/
cp .vimrc ~/.vimrc

# Install Vim Packages
# Install gruvbox theme
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

# Install nerdcommenter
git clone https://github.com/preservim/nerdcommenter.git ~/.vim/pack/default/start/nerdcommenter

# Install vim-autoformat
git clone https://github.com/Chiel92/vim-autoformat.git ~/.vim/pack/default/start/vim-autoformat

# Install vim-indent-guides
git clone https://github.com/nathanaelkane/vim-indent-guides ~/.vim/pack/default/start/vim-indent-guides

# Install YouCompleteMe
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/pack/default/start/YouCompleteMe
git submodule update --init --recursive && ./install.py --all
