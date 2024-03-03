return {
  "mfussenegger/nvim-lint",
  config = function()
    local severity_map = {
      ["convention"] = vim.diagnostic.severity.INFO,
    }

    require("lint").linters.cookstyle = {
      cmd = "cookstyle",
      args = { "-f", "json" },
      append_fname = true,
      stdin = true,
      stream = "both",
      ignore_exitcode = true,
      parser = function(output)
        local diagnostics = {}
        local _, decoded = pcall(vim.json.decode, output)
        for _, result in ipairs(decoded.files) do
          for _, offense in ipairs(result.offenses) do
            local severity = severity_map[offense.severity]
            table.insert(diagnostics, {
              source = "cookstyle",
              message = offense.message,
              col = offense.location.start_column,
              end_col = offense.location.last_column,
              lnum = offense.location.start_line - 1,
              end_lnum = offense.location.last_line - 1,
              code = offense.cop_name,
              severity = severity,
            })
          end
        end
        return diagnostics
      end,
    }

    require("lint").linters_by_ft = {
      python = { "pylint" },
      ansible = { "ansible_lint" },
      lua = { "luacheck" },
      cf = { "cfn_lint" },
      terraform = { "tfsec" },
      chef = { "cookstyle" },
      ruby = { "rubocop " },
      go = { "revive" },
      yaml = { "yamllint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
