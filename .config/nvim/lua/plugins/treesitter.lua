return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
					ignore_install = {},
					auto_install = true,
					textobjects = {
							select = {
								enable = true,
								lookahead = true,
								keymaps = {
									['af'] = '@function.outer',
									['if'] = '@function.inner',
									['ac'] = '@class.outer',
									['ic'] = '@class.inner',
								}
							},
						},
					modules = {},
          ensure_installed = { "lua", "vim", "vimdoc", "markdown" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
