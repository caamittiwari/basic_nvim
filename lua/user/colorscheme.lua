local colorscheme ="tokyonight"
if colorscheme == "tokyonight" then
  vim.g.tokyonight_style = "storm"
  vim.g.tokyonight_italic_functions = false
  vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
end
vim.cmd [[
try
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

-- another  way  to set up 
-- vim.cmd "colorscheme default"
-- local colorscheme = "tokyonight"
local status_ok, _=pcall(vim.cmd , 'colorscheme '..colorscheme)

if not  status_ok then
  vim.notify("colorscheme" ..colorscheme .. "not found" )
  return
end

