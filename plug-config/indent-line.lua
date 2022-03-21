vim.cmd[[highlight IndentBlanklineChar guifg=#073642 gui=nocombine]]

require("indent_blankline").setup {
    show_first_indent_level = false,
    show_trailing_blankline_indent = false,
    buftype_exclude = {"help","terminal"},
    filetype_exclude = {"dashboard","nvim-tree","nvim-lsp-installer"},
}


--base03
--#002b36
--base02
--#073642
--base01
--#586e75
--base00
--#657b83
--base0
--#839496
--base1
--#93a1a1
--cyan
--#2aa198
