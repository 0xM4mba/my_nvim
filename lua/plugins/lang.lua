-- Language-specific plugin overrides and extra tooling.
-- NOTE: Language extras (python, typescript, go, etc.) are already imported
-- in lua/config/lazy.lua — do NOT re-import them here to avoid conflicts.

return {
  -- Ensure Mason installs common LSP servers, linters, and formatters
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- LSP servers (use Mason registry names, NOT nvim-lspconfig server names)
        "pyright",
        "rust-analyzer",
        "gopls",
        "clangd",
        "jdtls",
        "typescript-language-server", -- lspconfig name: ts_ls
        "lua-language-server",        -- lspconfig name: lua_ls
        -- Linters
        "ruff",
        "eslint_d",
        -- Formatters
        "prettierd",
        "black",
        "isort",
        "stylua",
      })
    end,
  },

  -- Extra treesitter parsers on top of what LazyVim enables
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "c",
        "cpp",
        "go",
        "rust",
        "java",
        "sql",
        "dockerfile",
        "toml",
        "cmake",
        "make",
        "git_rebase",
        "gitcommit",
        "diff",
      })
    end,
  },
}
