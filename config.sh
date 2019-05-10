# Install Vim
sudo apt-get install vim

# Install Git
sudo apt-get install git

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy /config/vimrc to ~/
cp .vimrc ~/.vimrc

# Install Vundle Plugins
vim +PluginInstall +qall

