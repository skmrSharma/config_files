import catppuccin

config.load_autoconfig(False)
c.fonts.default_family = ["mononoki","Unifont","Unifont-JP","Noto Color Emoji"]
# c.fonts.statusbar = "default_size Terminus"

c.fonts.web.family.sans_serif = "Linux Biolinum"
c.fonts.web.family.fixed = "Terminess Nerd Font"
c.fonts.web.family.serif = "Linux Libertine"
c.fonts.web.size.default = 18

c.zoom.default = 110

# if true it will autoplay youtube videos
c.content.autoplay = False

# c.content.user_stylesheets = "custom_stylesheet.css"

# keybindings normal mode
config.bind(',M', 'hint links spawn mpv {hint-url}')
config.bind(',P', 'hint links spawn feh {hint-url}')

catppuccin.setup(c, 'frappe', True)

# to load srcery theme
# config.source('srcery.py')

# to load gruvbox-light theme
# config.source('base16-gruvbox-light-hard.py')

# to load flat theme
# config.source('base16-flat.config.py')
