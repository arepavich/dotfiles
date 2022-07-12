local persisted_status_ok, persisted = pcall(require, "persisted")
if not persisted_status_ok then
  return
end

persisted.setup()

local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
  return
end

telescope.load_extension("persisted")
