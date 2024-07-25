return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- setup autotag
    require('nvim-ts-autotag').setup()

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = {
        enable = true
      },

      -- the below autotag setup is deprecated. Used require('nvim-ts-autotag').setup() above instead
      -- enable autotagging (w/ nvim-ts-autotag plugin) 
      -- autotag = {
      --   enable = true,
      -- },

      -- ensure these language parsers are installed
      ensure_installed = {
        -- golang
        "go",
        "gomod",
        "gosum",

        -- python
        "python",

        -- c
        "c",
        "cpp",

        -- javascript
        "javascript",
        "typescript",
        "tsx",

        -- markdown
        "markdown",
        "markdown_inline",

        -- vim
        "vim",
        "vimdoc",

        -- lua
        "lua",

        -- misc
        "json",
        "yaml",
        "html",
        "css",
        "bash",
        "dockerfile",
        "gitignore",
      },
    })
  end,
}
