#install golang
curl -L -o go1.8.linux-amd64.tar.gz https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.8.linux-amd64.tar.gz
rm -rf go1.8.linux-amd64.tar.gz

#dir for golang
sudo mkdir /goprojects
sudo mkdir /goprojects/bin
sudo mkdir /goprojects/pkg
sudo mkdir /goprojects/src
sudo mkdir /goprojects/src/github.com
sudo mkdir /goprojects/src/github.com/genchilu
sudo chmod -R 777 /goprojects

#setup env
echo "PATH=$PATH:/usr/local/go/bin:/goprojects/bin:/usr/local/go/bin" >> \
~/.zshrc
export PATH=$PATH:/usr/local/go/bin:/goprojects/bin:/usr/local/go/bin

echo "GOPATH=/goprojects" >> /etc/profile
export GOPATH=/goprojects

#install vim plugin for golang
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
go get -u github.com/jstemmer/gotags
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
go get github.com/nsf/gocode

#setup vimrc
cat golang-vimrc >> ~/.vimrc

