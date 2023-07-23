# config_files
contains the config files or rc files for different programs that i use.
## Plugins that I use
### Vim:
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Check `call plug#begin()` section in vimrc
* **Colorscheme**: Zenburn \([link](https://github.com/jnurmine/Zenburn)\)
* ripgrep used under the hood when :grep for superfast search results.
### ZSH:
* GBT
* ufetch
### Markdown.pl
+ A script I use to convert md files to html.it requires the perl v5.6 or later to work (perl is usually installed by default on standard linux distros).
### Neovim
+ Plugins are listed in packer.lua.
+ Packer might fail installing the plugins when loading nvim for the first time, but it will work aferwords.
+ Some options are there for Neovide as well. It applies only if it's installed.
### Profile
+ This is my ash/sh profile.
+ tput comes from ncurses cli tools.
+ [afetch](https://github.com/13-CF/afetch) is used with custom config. afetch must be compiled from source, to apply config changes.
### Qutebroswer
+ Catppuccin theme for qutebroswer. Get from github.
+ Unifont, Linux Libertine font set, Terminus, mononoki fonts.
+ mpv as external video player.
+ feh as external image viewer.
