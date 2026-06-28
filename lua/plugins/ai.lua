return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://127.0.0.1:11434",
            },
            schema = {
              model = {
                default = "deepseek-coder:6.7b",
              },
            },
          })
        end,
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat<cr>", desc = "AI Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", desc = "AI Inline" },
      -- Fixed: CodeCompanionToggle doesn't exist; use CodeCompanionChat toggle
      { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", desc = "AI Toggle" },
      { "<leader>ae", "<cmd>CodeCompanion /explain<cr>", desc = "AI Explain" },
      { "<leader>ar", "<cmd>CodeCompanion /review<cr>", desc = "AI Review" },
      {
        "<leader>af",
        function()
          local bufnr = vim.api.nvim_get_current_buf()
          local filetype = vim.bo[bufnr].filetype
          local content = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
          local code = table.concat(content, "\n")
          require("codecompanion").chat({
            messages = {
              {
                role = "user",
                content = string.format(
                  "I have this %s code:\n\n```%s\n%s\n```\n\n",
                  filetype,
                  filetype,
                  code
                ),
              },
            },
          })
        end,
        desc = "AI Chat with current file",
      },
    },
  },
}
