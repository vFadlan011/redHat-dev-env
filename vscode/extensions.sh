curl https://raw.githubusercontent.com/vFadlan011/redHat-dev-env/main/vscode/keybindings.json -o keybindings.json
curl https://raw.githubusercontent.com/vFadlan011/redHat-dev-env/main/vscode/settings.json -o settings.json
curl https://download-cdn.jetbrains.com/fonts/JetBrainsMono-2.304.zip -o JetbrainsMono-2.zip

pkglist=(
	shufo.vscode-blade-formatter
  	glitchbl.laravel-create-view
  	ryannaddy.laravel-artisan
  	onecentlin.laravel5-snippets
  	onecentlin.laravel-blade
  	amiralizadeh9480.laravel-extra-intellisense
	bmewburn.vscode-intelephense-client
	bradlc.vscode-tailwindcss
	christian-kohler.path-intellisense
	ecmel.vscode-html-css
	esbenp.prettier-vscode
	formulahendry.auto-rename-tag
	oderwat.indent-rainbow
	vincaslt.highlight-matching-tag
	xabikos.javascriptsnippets
	xdebug.php-debug
	albert.TabOut
)
for i in ${pkglist[@]}; do
  code --install-extension $i
done
