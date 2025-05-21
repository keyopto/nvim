local luasnip = require("luasnip")
local snippet = luasnip.snippet
local fmt = require("luasnip.extras.fmt").fmt
local i = luasnip.insert_node
local f = luasnip.function_node

-- Helper to get class name from file name
local function filename_to_class_name()
  return vim.fn.expand("%:t:r") -- filename without extension
end

-- Helper to get package name from file path
local function filepath_to_package()
  local full_path = vim.fn.expand("%:p:h") -- full path without filename
  local src_index = full_path:find("/src/main/java/")
  if src_index then
    local pkg = full_path:sub(src_index + 15):gsub("/", ".")
    return "package " .. pkg .. ";"
  else
    return "// package unknown"
  end
end

local function get_created_on()
  local date = os.date("%d-%m-%Y")
  return {
    "/*",
    " * Created by Sylvain Frediani on " .. date,
    " */"
  }
end


luasnip.add_snippets("java", {
  snippet("entity", fmt([[
    {}

    import jakarta.persistence.Entity;
    import jakarta.persistence.Id;
    import jakarta.persistence.GeneratedValue;
    import jakarta.persistence.GenerationType;

    {}
    @Entity
    public class {} {{

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long {};

        public {}() {{
        }}

        public Long getId() {{
            return this.id;
        }}

        public void setId(Long id) {{
            this.id = id;
        }}
    }}
  ]], {
    f(filepath_to_package),    -- package
    f(get_created_on),
    f(filename_to_class_name), -- class name from file
    i(1, "id"),                -- ID field name
    f(filename_to_class_name), -- constructor name (same as class)
  })),
  snippet("enum", fmt([[
    {}

    {}
    public enum {} {{

    }}
  ]], {
    f(filepath_to_package),    -- package
    f(get_created_on),
    f(filename_to_class_name), -- class name from file
  })),
  snippet("class", fmt([[
    {}

    {}
    public class {} {{

    }}
  ]], {
    f(filepath_to_package),    -- package
    f(get_created_on),         -- Current date
    f(filename_to_class_name), -- Class name
  })),
  snippet("interface", fmt([[
    {}

    {}
    public interface {} {{

    }}
  ]], {
    f(filepath_to_package),    -- package
    f(get_created_on),         -- Current date
    f(filename_to_class_name), -- Class name
  })),
})
