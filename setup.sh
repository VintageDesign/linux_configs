echo "Moving Dotfiles..."
cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp fzf.bash ~/.fzf.bash
cp -r commands ~/commands

echo "Installing tools..."
sudo apt install -y tmux ripgrep cmake-format clang-format black


echo "Configuring Git..."
git config --global init.templatedir '~/.git-templates'
cp  gitignore ~/.gitignore
cp  gitconfig ~/.gitconfig
cp -r git-templates ~/.git-templates

echo "Installing FZF..."
git clone --depth 1 git@github.com:junegunn/fzf.git ~/.fzf
~/.fzf/install
