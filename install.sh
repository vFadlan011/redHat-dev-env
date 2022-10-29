# GIT
#sudo dnf -y install git
#git config --global user.name "Fadlan A"
#git config --global user.email "fadlanerman6@gmail.com"

# Jtebrains Mono
#unzip jetbrains-mono/JetBrainsMono-2.242.zip -d ~/.local/share/fonts
#fc-cache-f-v

#failed:
#mysql, mongodb, postgresql, docker, httpd


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
