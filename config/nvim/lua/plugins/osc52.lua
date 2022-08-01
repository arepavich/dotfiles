local osc52_status_ok, osc52 = pcall(require, 'osc52')
if not osc52_status_ok then
  return
end

osc52.setup()
