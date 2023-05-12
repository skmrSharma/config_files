#config.load_autoconfig()
c.fonts.default_family = ["Terminus","Noto Color Emoji"]
c.fonts.statusbar = "default_size Terminus"
# c.qt.highdpi = True
# c.qt.force_software_rendering="qt-quick"
c.qt.environ = {'QUTE_QT_WRAPPER':'PyQt6'}
c.qt.force_platform = "wayland"
c.qt.force_platformtheme = "qt5ct"
c.window.hide_decoration = True

# below web settings only work when website doesn't define its own fonts
c.fonts.web.family.sans_serif = "Noto Sans"
c.fonts.web.family.serif = "FreeSerif"
c.fonts.web.family.standard = "Noto Sans"
c.fonts.web.size.default = 18

# keybindings normal mode
config.bind(',M', 'hint links spawn mpv {hint-url}')

c.content.user_stylesheets = "custom_stylesheet.css"
config.load_autoconfig(False)
