-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["BufOnly.nvim"] = {
    commands = { "BufOnly" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/BufOnly.nvim",
    url = "https://github.com/numtostr/BufOnly.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  Sierra = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/Sierra",
    url = "https://github.com/AlessandroYorba/Sierra"
  },
  ["VimCompletesMe.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/VimCompletesMe.vim",
    url = "https://git.sr.ht/~ackyshake/VimCompletesMe.vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["caret.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/caret.nvim",
    url = "https://github.com/projekt0n/caret.nvim"
  },
  ["darkrose.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/darkrose.nvim",
    url = "https://github.com/water-sucks/darkrose.nvim"
  },
  ["flatwhite-vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/flatwhite-vim",
    url = "https://github.com/kamwitsta/flatwhite-vim"
  },
  ["flow.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/flow.nvim",
    url = "https://github.com/arjunmahishi/flow.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["moonbow.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/moonbow.nvim",
    url = "https://github.com/arturgoms/moonbow.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  nvimgelion = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvimgelion",
    url = "https://github.com/nyngwang/nvimgelion"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/monsonjeremy/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pounce.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/pounce.nvim",
    url = "https://github.com/rlane/pounce.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["sidebar.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/sidebar-nvim/sidebar.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-256noir"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-256noir",
    url = "https://github.com/andreasvc/vim-256noir"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-gruvbox8",
    url = "https://github.com/lifepillar/vim-gruvbox8"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["zenburn.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/zenburn.nvim",
    url = "https://github.com/phha/zenburn.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'BufOnly', function(cmdargs)
          require('packer.load')({'BufOnly.nvim'}, { cmd = 'BufOnly', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'BufOnly.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('BufOnly ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
