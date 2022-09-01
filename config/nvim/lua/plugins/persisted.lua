local persisted_status_ok, persisted = pcall(require, "persisted")
if not persisted_status_ok then
  return
end

persisted.setup({
  before_save = function()
    pcall(vim.cmd, "Neotree close")
  end,
  after_save = function()
    pcall(vim.cmd, "Neotree show")
  end
})

local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
  return
end

telescope.load_extension("persisted")
