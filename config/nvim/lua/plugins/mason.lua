local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return
end

local mason_config_status_ok, mason_config = pcall(require, 'mason-lspconfig')
if not mason_config_status_ok then
  return
end

mason.setup()
mason_config.setup({
  ensure_installed = {
    "pylsp",
    "pyright",
    "tsserver",
    "jsonls",
  }
})
