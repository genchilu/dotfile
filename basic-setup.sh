if [ -n "$(command -v apt-get)" ]; then
	sudo apt-get update -y
	sudo apt-get install -y zsh curl vim tmux git htop
elif [ -n "$(command -v yum)" ]; then
	sudo yum update -y
	sudo yum install -y zsh curl vim tmux git htop epel-release
else
	echo "can't find package manager!"
	exit
fi

#vim plugin
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

#change shell to zsh
echo "type user's password to change shell to zsh"
chsh -s /bin/zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "alias gitlogall='git log --all --graph --color --decorate'" >> ~/.zshrc
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"bira\"/g' ~/.zshrc

cp basic-vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
