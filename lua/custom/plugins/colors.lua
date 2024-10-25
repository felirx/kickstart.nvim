function ColorMyPencils(color)
  color = color or 'tokyonight-moon'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end

return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  -- 'rose-pine/neovim',
  -- name = 'rose-pine',
  'folke/tokyonight.nvim',
  name = 'tokyonight',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    require('tokyonight').setup {
      disable_background = true,
      transparent = true,
      on_highlights = function(hl, colors)
          hl.LineNrAbove = {
            fg = colors.blue5,
          }
          hl.LineNrBelow = {
            fg = colors.blue5,
          }
          hl.MsgArea = {
            fg = colors.green,
        }
      end,
    }

    vim.cmd.colorscheme 'tokyonight'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
    ColorMyPencils()
  end,
}
