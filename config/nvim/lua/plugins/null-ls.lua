local status_ok, nls = pcall(require, 'null-ls')
if not status_ok then
  return
end

nls.setup({
  sources = {
    nls.builtins.code_actions.gitsigns,
  }
})
