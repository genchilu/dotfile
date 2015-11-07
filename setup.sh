apt-get install -y zsh curl vim tmux

#vim plugin
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree

#change shell to zsh
chsh -s /bin/zsh
