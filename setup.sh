cp bashrc ~/.bashrc
cp vimrc ~/.vimrc

# Pre commit hook fomatter
sudo apt install -y cmake-format clang-format black
git config --global init.templatedir '~/.git-templates'
cp -r git-templates ~/.git-templates

