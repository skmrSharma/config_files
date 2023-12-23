local function custom_prefix_for_navic()
    return [[>>]]
end

local navic = require("nvim-navic")
require('lualine').setup {
     -- options = { theme = "zenburn" },
     options = { theme = "auto" },
     sections = {
         lualine_a = {'mode'},
         lualine_b = {'branch', 'diff', 'lsp_progress'},
         -- see :h lualine-filename-component-options
         lualine_c = {{'filename',path=4}},
         lualine_x = {'filetype'},
         lualine_y = {'progress'},
         lualine_z = {'location'}
     },
     winbar = {
         lualine_c = {
             {custom_prefix_for_navic, cond=navic.is_available},
             {
                 "navic",
                 color_correction = nil,
                 navic_opts = {click = true}
             },
         }
     }
}


-- TODO: below function doesn't work, taken from https://www.reddit.com/r/neovim/comments/o4bguk/comment/h2kcjxa/
local function lsp_progress_fun()
  local messages = vim.lsp.util.get_progress_messages()
  if #messages == 0 then
    return
  end
  local status = {}
  for _, msg in pairs(messages) do
    table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
  end
  local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
  local ms = vim.loop.hrtime() / 1000000
  local frame = math.floor(ms / 120) % #spinners
  return table.concat(status, " | ") .. " " .. spinners[frame + 1]
end
