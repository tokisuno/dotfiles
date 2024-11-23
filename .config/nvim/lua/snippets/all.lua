local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require('luasnip.extras')
local rep = extras.rep
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require("luasnip.extras.fmt").fmta
local c = ls.choice_node
local f = ls.function_node

ls.add_snippets("all", {
  s("asdf", t("nice")),
})

ls.add_snippets("tex", {
  s({ trig=";sec", name="New section" },
    fmta([[
    \section{<>}
    <>
    ]],
    {i(1), i(2)})
  ),
  s({ trig=";sub", name="New subsection" },
    fmta([[
    \subsection{<>}
    <>
    ]],
    { i(1), i(2) })
  ),
  s({ trig=';env', name='\\begin{}/\\end{}' },
    fmta([[
    \begin{<>}
    <>
    \end{<>}
    ]],
    { i(1), i(0), rep(1) })
  ),
  s({ trig=';q', name='LaTeX Compliant Double Quotations' },
    fmta([[
    ``<>''
    ]],
    { i(1) })
  ),
  s({ trig=';sq', name='LaTeX Compliant Single Quotations' },
    fmta([[
    `<>'
    ]],
    { i(1) })
  ),
})
