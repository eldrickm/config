# Install Vim YouCompleteMe Prerequisites
echo ">> Installing Vim YouCompleteme Prerequisites"
echo ""
sudo apt install build-essential cmake vim-nox python3-dev
echo ""

# Install Vundle (Vim Package Manager)
echo ">> Installing Vundle"
echo ""
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ""

# Overwrite vimrc
echo ">> Overwriting vimrc"
echo ""
cp .vimrc ~/.vimrc
echo ""

# Install Vundle Plugins
echo ">> Installing Vundle Plugins"
echo ""
vim +PluginInstall +qall
echo ""

# Compile YouCompleteMe
echo ">> Compiling YouCompleteMe"
echo ""
cd ~/.vim/bundle/youcompleteme
python3 install.py
echo ""

# Install zsh
echo ">> Installing zsh"
echo ""
sudo apt install zsh
echo ""

# Install oh-my-zsh
echo ">> Installing oh-my-zsh"
echo ""
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo ""

# Install elessar theme
echo ">> Downloading oh-my-zsh elessar theme"
echo ""
sudo apt install curl
mkdir -p $ZSH_CUSTOM/themes
curl https://raw.githubusercontent.com/fjpalacios/elessar-theme/master/elessar.zsh-theme -L -o $ZSH_CUSTOM/themes/elessar.zsh-theme

# Add zshrc tweaks
echo ">> Adding zshrc tweaks"
echo ""
sed -i '/ZSH_THEME=.*/c\ZSH_THEME=\"elessar\"' ~/.zshrc
echo "alias l='ls'" >> ~/.zshrc
source ~/.zshrc
echo ""

# Change Ubuntu Terminal Theme
echo ">> Changing terminal theme with Gogh"
echo ""
bash -c  "$(wget -qO- https://git.io/vQgMr)"
echo ""

# Install tmux
echo ">> Installing tmux"
echo ""
sudo apt install tmux
echo ""
