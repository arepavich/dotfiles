local luasnip = require("luasnip")
local s = luasnip.s
local i = luasnip.i
local t = luasnip.t

local d = luasnip.dynamic_node
local c = luasnip.choice_node
local f = luasnip.function_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

luasnip.add_snippets(nil, {
  lua = {
    s("test", { t("Hello world!") }),
    s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
    s("sreq", fmt("local {}_status_ok, {} = pcall(require, '{}')", {rep(1), i(1), rep(1)}))
  }
})
