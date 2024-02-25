local status, fzf = pcall(require, "fzf-lua")
if not status then
  return
end

fzf.setup({})

vim.keymap.set("n", ";f", function()
  fzf.files({
    no_ignore = false,
    hidden = false,
  })
end)
vim.keymap.set("n", ";r", function()
  fzf.live_grep()
end)
vim.keymap.set("n", ";b", function()
  fzf.buffers()
end)
vim.keymap.set("n", "\\\\", function()
  fzf.buffers()
end)
vim.keymap.set("n", ";t", function()
  fzf.help_tags()
end)
vim.keymap.set("n", ";;", function()
  fzf.resume()
end)
vim.keymap.set("n", ";e", function()
  fzf.diagnostics()
end)
vim.keymap.set("n", ";of", function()
  fzf.oldfiles()
end)
