# GIT
#sudo dnf -y install git
#git config --global user.name "Fadlan A"
#git config --global user.email "fadlanerman6@gmail.com"

# Jtebrains Mono
#unzip jetbrains-mono/JetBrainsMono-2.242.zip -d ~/.local/share/fonts
#fc-cache-f-v

#failed:
#mysql, mongodb, postgresql, docker, httpd

# VSCode
#install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#add vscode repo
cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
#install vscode
dnf install code
#install extensions
pkglist=(
	aaron-bond.better-comments-3.0.2
	bmewburn.vscode-intelephense-client-1.8.2
	bradlc.vscode-tailwindcss-0.9.1
	chakrounanas.turbo-console-log-2.5.6
	chris-noring.node-snippets-1.3.3
	christian-kohler.npm-intellisense-1.4.2
	christian-kohler.path-intellisense-2.8.1
	dbaeumer.vscode-eslint-2.2.6
	dsznajder.es7-react-js-snippets-4.4.3
	eamodio.gitlens-13.0.3
	ecmel.vscode-html-css-1.13.1
	eg2.vscode-npm-script-0.3.29
	esbenp.prettier-vscode-9.9.0
	formulahendry.auto-rename-tag-0.1.10
	golang.go-0.35.2
	golang.go-nightly-2022.10.2500
	jasonnutter.search-node-modules-1.3.0
	jobe451.lorem-whatever-1.0.2
	ms-azuretools.vscode-docker-1.22.2
	ms-ossdata.vscode-postgresql-0.3.0
	ms-python.python-2022.16.1
	ms-python.vscode-pylance-2022.10.40
	ms-toolsai.jupyter-2022.9.1202862440
	ms-toolsai.jupyter-keymap-1.0.0
	ms-toolsai.jupyter-renderers-1.0.10
	ms-toolsai.vscode-jupyter-cell-tags-0.1.6
	ms-toolsai.vscode-jupyter-slideshow-0.1.5
	ms-vscode.js-debug-nightly-2022.10.1317
	ms-vscode-remote.remote-containers-0.255.4
	ms-vscode.vscode-typescript-next-4.9.20221028
	ms-vsliveshare.vsliveshare-1.0.5750
	oderwat.indent-rainbow-8.3.1
	orta.vscode-jest-4.6.0
	pkief.material-icon-theme-4.21.0
	pnp.polacode-0.3.4
	rangav.vscode-thunder-client-1.20.1
	ritwickdey.liveserver-5.7.9
	skyran.js-jsx-snippets-11.0.0
	stateful.stable-0.8.0
	vincaslt.highlight-matching-tag-0.10.1
	visualstudioexptteam.intellicode-api-usage-examples-0.2.6
	visualstudioexptteam.vscodeintellicode-1.2.29
	waderyan.nodejs-extension-pack-0.1.9
	wix.vscode-import-cost-3.3.0
	xabikos.javascriptsnippets-1.8.0
	xdebug.php-debug-1.29.0
	yzane.markdown-pdf-1.4.4
)
for i in ${pkglist[@]}; do
  code --install-extension $i
done
#install settings.json
cp -fr vscode/settings.json $HOME/.config/Code/User
cp -fr vscode/key-bindings.json $HOME/.config/Code/User


# install docker
sudo dnf install -y  docker/docker-desktop-x86_64.rpm

# install nodejs
sudo dnf install -y nodejs
npm install -g jest

# install GoLang
sudo dnf install -y golang
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
source $HOME/.bashrc

# install MySQL
sudo dnf install -y mysql-community-server
sudo grep 'dettol' /var/log/mysqld.log
sudo mysql_secure_installation

# install PostgreSQL
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/F-36-x86_64/pgdg-fedora-repo-latest.noarch.rpm
sudo dnf install -y postgresql14-server
sudo /usr/pgsql-14/bin/postgresql-14-setup initdb
sudo systemctl enable postgresql-14
sudo systemctl start postgresql-14

# install MongoDB
sudo dnf install -y mongodb mongodb-server

# install apache
sudo dnf install -y httpd
sudo firewall-cmd --permanent --add-service=https

# install nginx
sudo dnf install -y nginx

# install chromium
sudo dnf install -y chromium

# install brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser

#install PenPot
docker compose -p penpot -f docker-compose.yaml up -d

#install krita
sudo dnf install -y krita
