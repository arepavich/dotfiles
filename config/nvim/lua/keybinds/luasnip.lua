local luasnip = require('luasnip')
vim.keymap.set({'i', 's'}, '<C-l>', function()
  if luasnip.choice_active() then
    luasnip.change_choice(1)
  end
end, {})
vim.keymap.set({'i', 's'}, '<C-h>', function()
  if luasnip.choice_active() then
    luasnip.change_choice(-1)
  end
end, {})

-- TODO: Revisit this to bind to C-n / C-p with fallback <08-18-22, arepavich> 
