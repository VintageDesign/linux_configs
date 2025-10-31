cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp fzf.bash ~/.fzf.bash
cp -r commands ~/commands

# Pre commit hook fomatter deps
sudo apt install -y fzf tmux cmake-format clang-format black

git config --global init.templatedir '~/.git-templates'
cp  gitignore ~/.gitignore
cp  gitconfig ~/.gitconfig
cp -r git-templates ~/.git-templates

