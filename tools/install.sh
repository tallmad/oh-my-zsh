<<<<<<< HEAD
if [ -d ~/.zsh ]
then
  echo "\033[0;33mYou already have zsh configured.\033[0m You'll need to remove ~/.zsh if you want to continue."
  exit
fi

echo "\033[0;34mCloning lxzsh...\033[0m"
/usr/bin/env git clone git://github.com/lxyu/lxzsh.git ~/.zsh

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32]Backing up to ~/.zshrc.pre\033[0m";
  mv ~/.zshrc ~/.zshrc.pre;
fi

echo "\033[0;34mUsing the zsh template file and adding it to ~/.zshrc\033[0m"
ln -s ~/.zsh/templates/`uname`.zsh-template ~/.zshrc
=======
set -e

if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  echo "\033[0;33mYou already have Oh My Zsh installed.\033[0m You'll need to remove $ZSH if you want to install"
  exit
fi

echo "\033[0;34mCloning Oh My Zsh...\033[0m"
hash git >/dev/null 2>&1 && env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
  echo "git not installed"
  exit
}

echo "\033[0;34mLooking for an existing zsh config...\033[0m"
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
  echo "\033[0;33mFound ~/.zshrc.\033[0m \033[0;32mBacking up to ~/.zshrc.pre-oh-my-zsh\033[0m";
  mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh;
fi

echo "\033[0;34mUsing the Oh My Zsh template file and adding it to ~/.zshrc\033[0m"
cp $ZSH/templates/zshrc.zsh-template ~/.zshrc
sed -i -e "/^export ZSH=/ c\\
export ZSH=$ZSH
" ~/.zshrc
>>>>>>> upstream/master

echo "\033[0;34mCopying your current PATH and adding it to the end of ~/.zshrc for you.\033[0m"
echo "export PATH=\$PATH:$PATH" >> ~/.zshrc

<<<<<<< HEAD
echo "\033[0;32m"'              __   '"\033[0m"
echo "\033[0;32m"'  ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'  / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"' /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                   '"\033[0m"

echo "\n\n \033[0;32m....is now configured.\033[0m"

/usr/bin/env zsh
source ~/.zshrc
=======
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
    chsh -s `which zsh`
fi

echo "\033[0;32m"'         __                                     __   '"\033[0m"
echo "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
echo "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
echo "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
echo "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
echo "\033[0;32m"'                        /____/                       ....is now installed!'"\033[0m"
echo "\n\n \033[0;32mPlease look over the ~/.zshrc file to select plugins, themes, and options.\033[0m"
echo "\n\n \033[0;32mp.s. Follow us at http://twitter.com/ohmyzsh.\033[0m"
echo "\n\n \033[0;32mp.p.s. Get stickers and t-shirts at http://shop.planetargon.com.\033[0m"
env zsh
. ~/.zshrc
>>>>>>> upstream/master
