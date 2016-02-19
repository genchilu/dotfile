call pathogen#infect()
syntax enable
filetype plugin on
set number
set tabstop=4
set shiftwidth=4
set ai
set cursorline
set bg=light
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
set colorcolumn=80
map <C-n> :NERDTreeToggle<CR>
