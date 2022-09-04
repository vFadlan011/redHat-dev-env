# GIT
sudo dnf -y install git
git config --global user.name "Fadlan A"
git config --global user.email "fadlanerman6@gmail.com"


# Jetbrains Mono
unzip jetbrains-mono -d ~/.local/share/fonts
fc-cache-f-v


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
	Orta.vscode-jest
	PKief.material-icon-theme
	VisualStudioExptTeam.vscodeintellicode
	bradlc.vscode-tailwindcss
	chris-noring.node-snippets
	dbaeumer.vscode-eslint
	ecmel.vscode-html-css
	esbenp.prettier-vscode
	formulahendry.auto-rename-tag
	jobe451.lorem-whatever
	ms-vscode.js-debug-nightly
	rangav.vscode-thunder-client
	ritwickdey.LiveServer
	waderyan.nodejs-extension-pack
	moalamri.inline-fold
	pnp.polacode
	golang.Go
	golang.go-nightly
	ms-python.python
	ms-toolsai.jupyter
	ms-vscode.vscode-typescript-next
)
for i in ${pkglist[@]}; do
  code --install-extension $i
done
#install settings.json
cp -fr vscode/settings.json $HOME/.config/Code/User
cp -fr vscode/key-bindings.json $HOME/.config/Code/User


# install docker
sudo dnf install -y  https://desktop.docker.com/linux/main/amd64/docker-desktop-4.11.0-x86_64.rpm?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64

# install nodejs
sudo dnf install nodejs
npm install -G jest

# install GoLang
sudo dnf install golang
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
source $HOME/.bashrc

# install python 3
sudo dnf install python3
1


# install MySQL
sudo dnf install -y https://dev.mysql.com/get/mysql80-community-release-fc36-1.noarch.rpm
sudo mysql_secure_installation

# install PostgreSQL
sudo dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/F-36-x86_64/pgdg-fedora-repo-latest.noarch.rpm
sudo dnf install -y postgresql14-server
sudo /usr/pgsql-14/bin/postgresql-14-setup initdb
sudo systemctl enable postgresql-14
sudo systemctl start postgresql-14

# install MongoDB
sudo dnf install mongodb mongodb-server

# install apache
sudo dnf install -y httpd
sudo firewall-cmd --permanent --add-service=https

# install nginx
sudo dnf install nginx

# install xamp
curl https://www.apachefriends.org/xampp-files/8.0.6/xampp-linux-x64-8.0.6-0-installer.run -o xampp/xampp-linux-x86.run
chmod a+x xampp/xampp-linux-x86.run

# install chromium
sudo dnf install chromium

# install brave
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser

#install PenPot
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/docker-compose.yaml
wget https://raw.githubusercontent.com/penpot/penpot/main/docker/images/config.env
docker compose -p penpot -f docker-compose.yaml up -d

#install krita
sudo dnf install -y krita

#install blender
sudo dnf install gcc gcc-c++ git subversion make cmake mesa-libGL-devel mesa-libEGL-devel libX11-devel libXxf86vm-devel libXi-devel libXcursor-devel libXrandr-devel libXinerama-devel libstdc++-static
sudo dnf install wayland-devel wayland-protocols-devel libxkbcommon-devel dbus-devel kernel-headers

mkdir ~/blender-git
cd ~/blender-git
git clone https://git.blender.org/blender.git

cd ~/blender-git/blender
make update
make
