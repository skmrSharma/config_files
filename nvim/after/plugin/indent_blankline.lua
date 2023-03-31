local indent_blankline = require("indent_blankline")

-- vim.cmd [[highlight IndentBlanklineChar guifg=#00FF00 gui=nocombine]]
indent_blankline.setup {
    char="|",
--    char_highlight_list={'#95b4e6'},
    filetype={'python'}
}
