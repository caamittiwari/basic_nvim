-- vim.cmd [[
-- try
--   colorscheme tokyonight
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
 
-- another  way  to set up 
-- vim.cmd "colorscheme default"
local colorscheme = "tokyonight"
local status_ok, _=pcall(vim.cmd , 'colorscheme '..colorscheme)

if not  status_ok then
  vim.notify("colorscheme" ..colorscheme .. "not found" )
  return
end
