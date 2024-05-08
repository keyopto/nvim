local luasnip = require('luasnip')
local snippet = luasnip.snippet;
local textNode = luasnip.text_node;
local insertNode = luasnip.insert_node;
local extras = require('luasnip.extras')
local rep = extras.rep
local fmt = require('luasnip.extras.fmt').fmt

luasnip.add_snippets('all', {
    snippet('react',
        fmt([[
            import React from 'react';

            interface {name}Props {{

            }}

            const {name} : React.FC<{name}Props> = ({{

            }}) => {{
                return </>;
            }}
        ]], {
            name = insertNode(1, "ComponentName")
        }, {
            repeat_duplicates = true
        })
    ),
})
