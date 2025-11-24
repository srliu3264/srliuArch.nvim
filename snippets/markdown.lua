local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- rr -> \mathbb{R}
  s('mm', {
    t { '$$', '' },
    i(1),
    t { '', '$$' },
  }),
}
