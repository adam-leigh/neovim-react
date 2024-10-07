return {
  "windwp/nvim-ts-autotag",
  config = function()
    -- Safely attempt to require the plugin
    local status_ok, autotag = pcall(require, "nvim-ts-autotag")
    if not status_ok then
      return
    end

    -- Configure the plugin
    autotag.setup({
      autotag = {
        enable = true,
      },

      filetypes = {
        'html', 'htmldjango',
        'javascript', 'javascriptreact', 'jsx',
        'typescript', 'typescriptreact', 'tsx',
        'rescript',
        'svelte',
        'vue',
        'xml',
        'php',
        'markdown',
        'glimmer', 'handlebars', 'hbs',
      },

      skip_tags = {
        'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
        'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr', 'menuitem',
      },
    })
  end
}
