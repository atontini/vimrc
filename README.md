# Vimrc

First of all, you should install these software
1. Vim (Of course)
2. git
3. curl

Download the vimrc of this repo and place it on the on home directory:
```sh
curl https://raw.githubusercontent.com/atontini/vimrc/main/vimrc --output $HOME/.vimrc
```

Install vim-plug in its official repo:
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then enter vim and type:
```sh
:PlugInstall
```
for installing automatically all the plugins

