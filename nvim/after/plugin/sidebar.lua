require("sidebar-nvim").setup({
    sections = {"datetime","symbols","diagnostics","todos","git"}
})

vim.keymap.set('n', '', require("sidebar-nvim").toggle)
