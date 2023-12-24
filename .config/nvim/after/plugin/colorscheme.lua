-- vim.o.background = 'dark'

-- default config
require('solarized').setup({
    transparent = true, -- enable transparent background
    styles = {
      comments = {},
      functions = {},
      variables = {},
      numbers = {},
      constants = {},
      parameters = {},
      keywords = {},
      types = {},
    },
    enables = {
      bufferline = true,
      cmp = true,
      diagnostic = true,
      dashboard = true,
      editor = true,
      gitsign = true,
      hop = true,
      indentblankline = true,
      lsp = true,
      lspsaga = true,
      navic = true,
      neogit = true,
      neotree = true,
      notify = true,
      semantic = true,
      syntax = true,
      telescope = true,
      tree = true,
      treesitter = true,
      whichkey = true,
      mini = true,
    },
    highlights = {},
    colors = {},
    theme = 'neosolarized', -- or 'neosolarized' or 'neo' for short
})

vim.cmd.colorscheme = 'solarized'
