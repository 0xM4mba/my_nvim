return {
  -- Tokyo Night - anime aesthetic (moody neon city vibes)
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Catppuccin Mocha - pitch black hacker aesthetic
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = false,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      styles = {
        comments = { "italic" },
        functions = { "bold" },
        keywords = { "bold", "italic" },
      },
    },
  },

  -- Default to pitch black hacker theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- Theme toggle keymap (hosted on snacks.nvim since it loads early)
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>uT",
        function()
          if vim.g.colors_name and vim.g.colors_name:find("catppuccin") then
            vim.cmd.colorscheme("tokyonight-night")
          else
            vim.cmd.colorscheme("catppuccin")
          end
        end,
        desc = "Toggle Theme",
      },
    },
  },
}
