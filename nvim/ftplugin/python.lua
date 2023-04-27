-- sets the gq keymapping to run black
vim.o.formatprg="black - -q 2>/dev/null"
-- run the black formatter on save
-- vim.cmd [[autocmd BufWritePre <buffer> :%!black - -q 2>/dev/null]]
-- better version of above autocommand, cursor remains in position
vim.cmd([[
    augroup PyFormat
        autocmd!
        autocmd BufWritePre <buffer> if executable('black') | :execute 'normal mfgggqGg`f' | endif
    augroup END
]])
-- if vim.fn.executable('black') == 1 then
--     print("Hello World")
-- end
