local tokyonight_status_ok, tokyonight = pcall(require, 'tokyonight')
if not tokyonight_status_ok then
  return
end

tokyonight.setup({
  style = "storm",
  transparent = true
})
