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