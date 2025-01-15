local luasnip = require("luasnip")
local snippet = luasnip.snippet
local insertNode = luasnip.insert_node
local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt

luasnip.add_snippets("all", {
  snippet(
    "react-component",
    fmt(
      [[
	           import React from 'react';

	           const {name} : React.FC<{{}}> = ({{

	           }}) => {{
	               return <div></div>;
	           }}

	           export default {name};
	       ]],
      {
        name = insertNode(1, "ComponentName"),
      },
      {
        repeat_duplicates = true,
      }
    )
  ),
  snippet(
    "react-native-component",
    fmt(
      [[
	           import React from 'react';

	           export type {name}Props = {{
                __placeholder?: never;
             }};

	           const {name} : React.FC<{name}Props> = ({{

	           }}) => {{
	               return null;
	           }}

	           export default {name};
	       ]],
      {
        name = insertNode(1, "ComponentName"),
      },
      {
        repeat_duplicates = true,
      }
    )
  ),
  snippet(
    "react-native-screen",
    fmt(
      [[
	           import React from 'react';

	           export type {name}ScreenParams = {{
                __placeholder?: never;
             }};

	           const {name} = () => {{
	               return null;
	           }}

	           export default {name};
	       ]],
      {
        name = insertNode(1, "ComponentName"),
      },
      {
        repeat_duplicates = true,
      }
    )
  ),
})
