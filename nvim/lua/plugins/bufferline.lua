return {
  "akinsho/bufferline.nvim",
  event = "BufWinEnter",
  opts = {
    options = {
      mode = "buffers",
      themable = true,
      numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
      close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
      middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
      indicator = {
        icon = "▎", -- this should be omitted if indicator style is not 'icon'
        style = "icon",
      },
      buffer_close_icon = "x",
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 30,
      max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
      tab_size = 30,
      diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
      diagnostics_indicator = nil,
      diagnostics_update_in_insert = false,
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      color_icons = true, -- whether or not to add the filetype icon highlights
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      separator_style = "thick", -- | "thick" | "thin" | { 'any', 'any' },
      enforce_regular_tabs = false,
      always_show_bufferline = false,
      sort_by = "id",
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
}
