local octo_status_ok, octo = pcall(require, 'octo')
if not octo_status_ok then
  return
end

octo.setup()
