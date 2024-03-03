return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  branch = "0.1.x",
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-u>"] = false,
            ["<C-d>"] = false,
          },
        },
        file_ignore_patterns = {
          "^node_modules/",
          "^.git/",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        grep_string = {
          additional_args = function()
            return { "--hidden", "--glob", "!**/.git/*" }
          end,
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--glob", "!**/.git/*" }
          end,
        },
      },
      extensions = {
        undo = {
          use_delta = true,
          use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
          side_by_side = false,
          diff_context_lines = vim.o.scrolloff,
          entry_format = "state #$ID, $STAT, $TIME",
          mappings = {
            i = {
              ["<cr>"] = require("telescope-undo.actions").yank_additions,
              ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
              ["<C-cr>"] = require("telescope-undo.actions").restore,
            },
          },
        },
        file_browser = {
          hijack_netwr = true,
          hidden = { file_browser = true },
        },
      },
    })

    require("telescope").load_extension("undo")
    require("telescope").load_extension("file_browser")

    -- See `:help telescope.builtin`
    vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
    vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })

    vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
    vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
    vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
    vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
    vim.keymap.set("n", "<leader>su", ":Telescope undo<cr>", { desc = "[S]earch [U]ndo" })
    vim.keymap.set(
      "n",
      "<leader>se",
      ":Telescope file_browser path=%:p:h select_buffer=true<cr>",
      { desc = "[S]earch [E]xplorer" }
    )
  end,
}
