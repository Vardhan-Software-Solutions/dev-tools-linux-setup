sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt -y install docker-ce
docker
sudo systemctl enable docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# install docker compose
sudo apt-get install -y docker-compose-plugin
docker compose ps

sudo apt-get install -y unzip
sudo apt install -y snapd

sudo apt-get install -y build-essential
sudo apt install -y clang
clang -v
sudo apt -y install libbpf-dev
sudo apt-get install -y llvm
sudo apt-get install -y libpcap-dev

#htop
sudo apt install -y libncursesw5-dev autotools-dev autoconf automake build-essential
sudo apt install -y htop

sudo apt install git
git --version

# pg4admin
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install -y pgadmin4

# install eksctl
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
sudo mv /tmp/eksctl /usr/local/bin

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# kubectl
sudo snap install kubectl --classic
kubectl version --client

# install brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# gh
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# other new
sudo apt install -y fzf
sudo snap install drawio
sudo apt install -y virtualbox
sudo apt-get install -y virtualbox-guest-additions-iso
sudo apt install -y build-essential dkms
sudo apt install -y tmux
sudo apt install -y neovim


# install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# install meld
sudo apt install -y meld

# install gpaste
sudo apt install -y gpaste-2

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
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local

#install golang https://stackoverflow.com/questions/26346252/error-in-setting-go-path-for-all-user
curl -LO https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
mkdir ~/golang
cd ~/golang
tar -xzf go1.22.0.linux-amd64.tar.gz
# add the 2 commands below to .bashrc
export PATH=$PATH:~/go/bin
export GOROOT=$HOME/golang/go 
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

git clone https://github.com/githubnext/monaspace.git
bash util/install_linux.sh