return {
  { "b0o/schemastore.nvim", ft = { "json", "yaml" } },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({
        icons = false,
      })
    end,
  },
  {
    "t9md/vim-chef",
    ft = "chef",
    keys = {
      { "<leader>fa", "<cmd>ChefFindAny<cr>", desc = "Chef Find" },
      { "<leader>fs", "<cmd>ChefFindAnySplit<cr>", desc = "Chef Find (Split)" },
    },
  },
  {
    "tpope/vim-fugitive",
  },
}
