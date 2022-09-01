local saga = require 'lspsaga'

saga.init_lsp_saga({
    border_style = "single",
    move_in_saga = { prev = '<C-p>',next = '<C-n>'},
    diagnostic_header = { " ", " ", " ", "ﴞ " },
    show_diagnostic_source = true,
    diagnostic_source_bracket = {},
    max_preview_lines = 10,
    code_action_icon = "",
    code_action_num_shortcut = true,
    code_action_lightbulb = {
      enable = true,
      sign = true,
      enable_in_insert = false,
      sign_priority = 20,
      virtual_text = true,
    },
    finder_icons = {
      def = '  ',
      ref = '諭 ',
      link = '  ',
    },
    finder_request_timeout = 1500,
    finder_action_keys = {
      open = "o",
      vsplit = "s",
      split = "i",
      tabe = "t",
      quit = "q",
      scroll_down = "<C-f>",
      scroll_up = "<C-b>", -- quit can be a table
    },
    code_action_keys = {
      quit = "q",
      exec = "<CR>",
    },
    rename_action_quit = "q",
    rename_in_select = true,
    definition_preview_icon = "  ",
    show_outline = {
      win_position = 'right',
      win_with = '',
      win_width = 30,
      auto_enter = true,
      auto_preview = true,
      virt_text = '┃',
      jump_key = 'o',
      auto_refresh = true,
    },
    server_filetype_map = {},
})
