-- vim.cmd.colorscheme("industry")
-- either above colorscheme (industry is very bright-on-black theme)
-- or below (purify is similar in attention capturing but not hurting eyes
-- vim.cmd.colorscheme("purify")
vim.o.guifont = "Latin_Modern_Mono:h19.19"
vim.o.background = "light"
local lualine = require("lualine")
local cur_lualine_settings = {options = {theme = "vimbones"}}
lualine.setup(vim.tbl_deep_extend("force",lualine.get_config(),cur_lualine_settings))
-- vim.cmd.colorscheme("rosebones")
vim.cmd.colorscheme("vimbones")
-- vim.cmd.colorscheme("eink")
-- vim.o.guifont="Terminus:h19"
vim.o.number = false
vim.o.relativenumber = false
-- vim.cmd [[let g:lightline = { 'colorscheme': 'enfocado' }]]
vim.o.cursorline=false
-- format file on save using Haskell LSP formatter
vim.api.nvim_create_augroup("HaskellFormat",{})
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = "*.hs",
    callback = function(args)
        vim.lsp.buf.format()
    end,
    group = "HaskellFormat",
    desc = "Format haskell files using the default lsp formatter."
})

-- vim.cmd [[setlocal conceallevel=2]]
