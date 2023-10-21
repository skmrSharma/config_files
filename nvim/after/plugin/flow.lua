flow = require('flow')
flow_vars = require('flow.vars')
navic = require('nvim-navic')

flow.setup {
    output = {
        buffer = true,
        split_cmd = '50split',
    }
}

vim.keymap.set('n', '<leader>tt', ':FlowLauncher<CR>', {})

flow_vars.add_vars({
  test_method = function()
    -- the method/class to test, under the cursor
    file_path_relative = vim.fn.expand("%:r")
    if navic.is_available() then
        -- location = navic.get_location()
        new_icons = {
            File          = "",
            Module        = "",
            Namespace     = "",
            Package       = "",
            Class         = "",
            Method        = "",
            Property      = "",
            Field         = "",
            Constructor   = "",
            Enum          = "",
            Interface     = "",
            Function      = "",
            Variable      = "",
            Constant      = "",
            String        = "",
            Number        = "",
            Boolean       = "",
            Array         = "",
            Object        = "",
            Key           = "",
            Null          = "",
            EnumMember    = "",
            Struct        = "",
            Event         = "",
            Operator      = "",
            TypeParameter = "",
        }
        -- opts = {icons=new_icons}
        -- lib = require('nvim-navic.lib')
        -- local_config = {icons = new_icons}
        -- if opts.icons ~= nil then
        --     for k, v in pairs(opts.icons) do
        --         if lib.adapt_lsp_str_to_num(k) then
        --             local_config.icons[lib.adapt_lsp_str_to_num(k)] = v
        --         end
        --     end
        -- end


        location_opts = {icons =new_icons,separator="."}
        location = navic.get_location(location_opts)
    end
    -- return vim.inspect(local_config)
    return location
  end
})


