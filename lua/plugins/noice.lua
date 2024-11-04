return {
  "folke/noice.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
      lsp = {
          override = {
              ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
              ["vim.lsp.util.stylize_markdown"] = true,
              ["cmp.entry.get_documentation"] = true,
          },
      },
      cmdline = {
          format = {
              cmdline = { icon = "ツ", title = 'ONE PIECE... DOES EXIST!' },
              search_down = { title = 'Search Down' },
              search_up = { title = 'Search Up' },
              filter = { title = 'Filter' },
              lua = { title = 'Lua Command' },
              help = { title = 'Help Command' },
              input = { title = 'Input' },
          },
      },
            views = {
                cmdline_popup = {
                    position = {
                    },
                    size = {
                    },
                },
                popupmenu = {
                    relative = "editor",
                    position = {
                        row = 8,
                        col = "50%",
                    },
                    size = {
                        width = 60,
                        height = 10,
                    },
                    border = {
                        style = "single",
                        padding = { 0, 1 },
                    },
                    win_options = {
                        winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
                    },
                },
            },
      },
}
