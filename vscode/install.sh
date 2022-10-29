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
sudo dnf install code
./install-theme-custom.sh
./install-settings.sh
