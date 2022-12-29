# Neovim from scratch

**Important Update** please pin your  plugin as they may break  for update come  which  break  the config  incase  you want  to update  u can do it  on experiment barance  and merge  with main  branch 

**Another Update** This repo should work fine with Neovim 0.8, 



## Try out this config

Make sure to remove or move your current `nvim` directory

**IMPORTANT** Requires [Neovim v0.8.0]](https://github.com/neovim/neovim/releases).  [Upgrade](#upgrade-to-latest-release) if you're on an earlier version. 
```
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
sudo make install
nvim -v
```

Configuration
LSP
To add a new LSP

First Enter:

:Mason
and press i on the Language Server you wish to install

Next you will need to add the server to this list: servers

Note: Builtin LSP doesn't contain all lsps from nvim-lspconfig.

If you want to install any from there, for example terraform_lsp(which adds more functionality than terraformls, like complete resource listing),

You can add the lsp name in mason lsp block
-- lua/usr/lsp/mason.lua
local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
  "terraform_lsp" -- New LSP
}
Manually install the binary of the lsp and put it in your path by downloading the binary or through your package manager. For terraform_lsp example
Formatters and linters
Make sure the formatter or linter is installed and add it to this setup function: null-ls

NOTE Some are already setup as examples, remove them if you want

Plugins
You can install new plugins here: plugins

Plugins
packer
plenary
nvim-autopairs
Comment.nvim
nvim-ts-context-commentstring
nvim-web-devicons
nvim-tree.lua
bufferline.nvim
vim-bbye
lualine.nvim
toggleterm.nvim
project.nvim
impatient.nvim
indent-blankline.nvim
alpha-nvim
tokyonight.nvim
darkplus.nvim
nvim-cmp
cmp-buffer
cmp-path
cmp_luasnip
cmp-nvim-lsp
cmp-nvim-lua
LuaSnip
friendly-snippets
mason.nvim
nvim-lspconfig
mason-lspconfig.nvim
null-ls.nvim
vim-illuminate
telescope.nvim
nvim-treesitter
gitsigns.nvim
nvim-dap
nvim-dap-ui
DAPInstall.nvim
