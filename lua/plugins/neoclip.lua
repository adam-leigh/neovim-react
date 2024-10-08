return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    {'nvim-telescope/telescope.nvim'},
  },
  config = function()
    require('neoclip').setup({
      close_telescope = true,
      keys = {
        telescope = {
          i = {
            select = '<cr>',
            paste = '<c-j>',
            paste_behind = '<c-k>',
            replay = '<c-q>', -- replay a macro
            delete = '<c-d>', -- delete an entry
            edit = '<c-e>',   -- edit an entry
            custom = {},
          },
          n = {
            select = '<cr>',
            paste = 'p',
            --- It is possible to map to more than one key.
            -- paste = { 'p', '<c-p>' },
            paste_behind = 'P',
            replay = 'q',
            delete = 'd',
            edit = 'e',
            custom = {},
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>P", "<cmd>Telescope neoclip<CR>", { desc = "Telescope Neoclip" })
  end,
}
