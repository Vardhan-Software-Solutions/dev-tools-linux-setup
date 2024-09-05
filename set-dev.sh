# install docker
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt -y install docker-ce
docker
sudo systemctl enable docker

#install nvim
sudo apt install -y neovim

# install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# install postman
sudo snap install postman

#install flameshot
sudo apt install -y flameshot

# install meld
sudo apt install -y meld

# install gpaste
sudo apt install -y gpaste

# install vscode
sudo snap install --classic code


# install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
minikube

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
command -v nvm
echo "Installing node version v20.17.0"
nvm install 20
node -v
npm -v

#install golang
curl -LO https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version


# install extensions
code --install-extension amazonwebservices.aws-toolkit-vscode
code --install-extension deepakgupta191199.save-commands
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.code-runner
code --install-extension foxundermoon.shell-format
code --install-extension github.remotehub
code --install-extension github.vscode-github-actions
code --install-extension golang.go
code --install-extension gruntfuggly.todo-tree
code --install-extension mark-tucker.aws-cli-configure
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.azure-repos
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.js-debug-nightly
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-repositories
code --install-extension ms-vscode.remote-server
code --install-extension plibither8.remove-comments
code --install-extension premparihar.gotestexplorer
code --install-extension redhat.vscode-yaml
code --install-extension ritwickdey.liveserver
code --install-extension rust-lang.rust-analyzer
code --install-extension samuelcolvin.jinjahtml
code --install-extension stamusnetworks.suricata-ls
code --install-extension wholroyd.jinja
code --install-extension xabikos.javascriptsnippets


# install docker
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt -y install docker-ce
docker
sudo systemctl enable docker

#install nvim
sudo apt install -y neovim

# install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# install postman
sudo snap install postman

#install flameshot
sudo apt install -y flameshot

# install meld
sudo apt install -y meld

# install gpaste
sudo apt install -y gpaste

# install vscode
sudo snap install --classic code


# install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
minikube

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
command -v nvm
echo "Installing node version v20.17.0"
nvm install 20
node -v
npm -v

#install golang
curl -LO https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version


# install extensions
code --install-extension amazonwebservices.aws-toolkit-vscode
code --install-extension deepakgupta191199.save-commands
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.code-runner
code --install-extension foxundermoon.shell-format
code --install-extension github.remotehub
code --install-extension github.vscode-github-actions
code --install-extension golang.go
code --install-extension gruntfuggly.todo-tree
code --install-extension mark-tucker.aws-cli-configure
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.debugpy
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.azure-repos
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.js-debug-nightly
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode.remote-repositories
code --install-extension ms-vscode.remote-server
code --install-extension plibither8.remove-comments
code --install-extension premparihar.gotestexplorer
code --install-extension redhat.vscode-yaml
code --install-extension ritwickdey.liveserver
code --install-extension rust-lang.rust-analyzer
code --install-extension samuelcolvin.jinjahtml
code --install-extension stamusnetworks.suricata-ls
code --install-extension wholroyd.jinja
code --install-extension xabikos.javascriptsnippets
