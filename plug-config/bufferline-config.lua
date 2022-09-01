require('bufferline').setup {
    options = {
        themable = true,
        mode = "buffers",
        separator_style = "thin",
        close_command = "bdelete! %d",   
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon',
        },
        buffer_close_icon = '',
        close_icon = '',
        modified_icon = '●',
        left_trunc_marker = '',
        right_trunc_marker = '',
        highlights = {},
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        }
    }
}
