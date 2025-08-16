:set relativenumber

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'wakatime/vim-wakatime'
call plug#end()
autocmd vimenter * ++nested colorscheme gruvbox

set background=dark

xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p
set clipboard=unnamedplus

:set tabstop=4
:set shiftwidth=4
