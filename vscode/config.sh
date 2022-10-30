# install settings and keybidings
sudo cp keybindings.json $HOME.config/Code/User
sudo cp settings.json $HOME.config/Code/User

# install custom theme (monokai dimmed modified)
sudo cp dimmed-monokai-color-theme.json /usr/share/code/resources/app/extensions

# install extension
pkglist=(
	aaron-bond.better-comments-3.0.2
	bmewburn.vscode-intelephense-client-1.8.2
	bradlc.vscode-tailwindcss-0.9.1
	chakrounanas.turbo-console-log-2.5.6
	chris-noring.node-snippets-1.3.3
	christian-kohler.npm-intellisense-1.4.2
	christian-kohler.path-intellisense-2.8.1
	dbaeumer.vscode-eslint-2.2.6
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
	ritwickdey.liveserver-5.7.9
	skyran.js-jsx-snippets-11.0.0
	vincaslt.highlight-matching-tag-0.10.1
	visualstudioexptteam.intellicode-api-usage-examples-0.2.6
	visualstudioexptteam.vscodeintellicode-1.2.29
	waderyan.nodejs-extension-pack-0.1.9
	wix.vscode-import-cost-3.3.0
	xabikos.javascriptsnippets-1.8.0
	xdebug.php-debug-1.29.0
	yzane.markdown-pdf-1.4.4
	albert.TabOut
)
for i in ${pkglist[@]}; do
  code --install-extension $i
done
#install settings.json
cp -fr vscode/settings.json $HOME/.config/Code/User
cp -fr vscode/key-bindings.json $HOME/.config/Code/User
