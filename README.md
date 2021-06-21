# Home config
## Font
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack


## Setup
```bash
chsh -s $(which zsh) $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --bare <git-repo-url> $HOME/.cfg
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -L git.io/antigen > ~/.config/antigen.zsh
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle
```

## For local installs of zsh

### Build and install ncurses

```bash
wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
tar xf ncurses-6.1.tar.gz
cd ncurses-6.1
./configure --prefix=$HOME/local CXXFLAGS="-fPIC" CFLAGS="-fPIC"
make -j && make install
```

Download: https://sourceforge.net/projects/zsh/files/latest/download

### Compile and Install:
```bash
configure --prefix=$HOME
make
make install
```

Put following into `.profile` or `.bash_profile` or whatever
```bash
[ -f $HOME/bin/zsh ] && exec $HOME/bin/zsh -l
```
