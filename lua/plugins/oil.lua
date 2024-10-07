return {
 {
      'stevearc/oil.nvim',
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
      require("oil").setup({
        columns = { "icon" },
        keymaps = {
          ["<C-h>"] = false,
          ["-"] = false,
          ["<M-h>"] = "actions.select_split",
          ["q"] = "actions.close",
          ["<Esc>"] = "actions.close",
        },
        view_options = {
          -- show_hidden = true,
        },
        float = {
        win_options = {
        -- winhl = "Normal:Normal,Float:Float",
        -- winhl = "Normal:Normal,Float:Float",
          -- winblend = 0,
      },
        }
      })
    end,
    },
}
