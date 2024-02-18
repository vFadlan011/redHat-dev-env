@echo off

curl -o keybindings.json https://raw.githubusercontent.com/vFadlan011/redHat-dev-env/main/vscode/keybindings.json
curl -o settings.json https://raw.githubusercontent.com/vFadlan011/redHat-dev-env/main/vscode/settings.json
curl -o JetbrainsMono-2.zip https://download-cdn.jetbrains.com/fonts/JetBrainsMono-2.304.zip
curl -o jquery-3.7.js https://code.jquery.com/jquery-3.7.1.min.js

set pkglist=(
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

for %%i in (%pkglist%) do (
  code --install-extension %%i
)

pause
