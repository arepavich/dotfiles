local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
  return
end

project.setup({
  manual_mode = true,
})
