local indent_blankline = require("indent_blankline")

-- vim.cmd [[highlight IndentBlanklineChar guifg=#00FF00 gui=nocombine]]
indent_blankline.setup {
--    char_highlight_list={'#95b4e6'},
    filetype={'python','nix'},
    show_current_context=true,
    show_current_context_start=true
}

-- due to a limitation of neovim (non-existence of fold events for autocmd), indent guides aren't redrawn when opening a fold. So, map the fold keys to also invoke IndentBlanklineRefresh
for _, keymap in pairs({
    'zo',
    'zO',
    'zc',
    'zC',
    'za',
    'zA',
    'zv',
    'zx',
    'zX',
    'zm',
    'zM',
    'zr',
    'zR',
}) do
    vim.api.nvim_set_keymap('n', keymap,  keymap .. '<CMD>IndentBlanklineRefresh<CR>', { noremap=true, silent=true })
end
