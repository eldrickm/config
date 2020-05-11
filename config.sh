# Install Vim
sudo apt-get install vim

# Install Git
sudo apt-get install git

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy /config/.vimrc to ~/
cp .vimrc ~/.vimrc

# Copy /config/.bashrc to ~/
cp .bashrc ~/.bashrc

# Install Vundle Plugins
vim +PluginInstall +qall

# Install Powerline Fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.local/share/fonts
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mkdir ~/.config/fontconfig/
mkdir ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Plugin: ALE (Asynchronous Lint Engine)
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
