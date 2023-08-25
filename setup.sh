cp bashrc ~/.bashrc
cp vimrc ~/.vimrc

# Pre commit hook fomatter deps
sudo apt install -y cmake-format clang-format black

git config --global init.templatedir '~/.git-templates'
cp  gitignore ~/.gitignore
cp  gitconfig ~/.gitconfig
cp -r git-templates ~/.git-templates

