local status_ok, neotree = pcall(require, 'neo-tree')
if not status_ok then
  return
end

vim.g.neo_tree_remove_legacy_commands = 1
neotree.setup({
  window = {
    position = 'left'
  }
})

local winpicker_status_ok, winpicker = pcall(require, 'window-picker')
if not winpicker_status_ok then
  return
end

winpicker.setup()
