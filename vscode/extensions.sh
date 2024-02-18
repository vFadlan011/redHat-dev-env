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
