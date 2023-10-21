local navic = require("nvim-navic")
require('lualine').setup {
     -- options = { theme = "zenburn" },
     options = { theme = "auto" },
     sections = {
         lualine_a = {'mode'},
         lualine_b = {'branch', 'diff'},
         lualine_c = {'filename'},
         lualine_x = {'filetype'},
         lualine_y = {'progress'},
         lualine_z = {'location'}
     },
     winbar = {
         lualine_c = {
             {
                 "navic",
                 color_correction = nil,
                 navic_opts = {click = true}
             },
         }
     }
}
