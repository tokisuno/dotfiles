local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require('luasnip.extras')
local rep = extras.rep
local fmt = require('luasnip.extras.fmt').fmt
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("all", {
  s("noob", t("i know :/")),
})
