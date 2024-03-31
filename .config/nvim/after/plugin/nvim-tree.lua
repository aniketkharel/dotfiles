local tree = require("nvim-tree")

tree.setup({
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true
      }
    }
  }
})
