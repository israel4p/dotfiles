local cmd = vim.cmd

cmd [[
    call wilder#setup({'modes': [':', '/', '?']})
]]

cmd [[
    call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
\     'highlights': {
\       'border': 'Normal',
\       'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
\     },
\
\     'border': 'rounded',
\
\     'left': [
\       ' ', wilder#popupmenu_devicons(),
\     ],
\
\     'right': [
\       ' ', wilder#popupmenu_scrollbar(),
\     ],
\   })))
]]
