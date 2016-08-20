if [ -n "$(command -v apt-get)" ]; then
	apt-get install -y zsh curl vim tmux
elif [ -n "$(command -v yum)" ]; then
	yum install -y zsh curl vim tmux
else
	echo "can't find package manager!"
	exit
fi

#vim plugin
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree

#change shell to zsh
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"bira\"/g' ~/.zshrc

cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
