if [ -n "$(command -v apt-get)" ]; then
	sudo apt-get update -y
	sudo apt-get install -y ctags
elif [ -n "$(command -v yum)" ]; then
	sudo yum update -y
	sudo yum install -y ctags
else
	echo "can't find package manager!"
	exit
fi

git clone git://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/klen/python-mode.git ~/.vim/bundle/python-mode

cat python-vimrc >> ~/.vimrc
