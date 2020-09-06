# Home config
## Font
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack


## Setup
```bash
chsh -s $(which zsh) $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
TMPDIR=$(mktemp)
git clone git@github.com:Penacillin/dotfiles.git $TMPDIR
cp -r $TMPDIR/. ./
```