return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        ansible = {
          "yamlfmt",
        },
        json = {
          "jq",
        },
        javascript = {
          "prettier",
        },
        typescript = {
          "prettier",
        },
        html = {
          "prettier",
        },
        yaml = {
          "yamlfmt",
        },
        sh = {
          "shfmt",
        },
        python = {
          "black",
        },
        lua = {
          "stylua",
        },
      },
    })
  end,
}
