local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
     colors = {"#E34B54",
                "#a89984",
                "#b16286",
                "#d79921",
                "#689d6a",
                "#d65d0e",
                "#458588",
                          }, -- table of hex strings
     termcolors = {"Red",
                  "Green",
                "Yellow",
                "Blue",
                "Magenta",
                "Cyan",
                "White",
                        } -- table of colour name strings
  },
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
   context_commentstring = {
    enable = true
  }
})
