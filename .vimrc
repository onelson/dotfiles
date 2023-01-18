set t_Co=256


call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-vinegar'
Plug 'vim-syntastic/syntastic'
Plug 'terryma/vim-expand-region'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'

call plug#end()

:colorscheme nord

set hidden
let g:racer_cmd = "~/.cargo/bin/racer"


" window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
" buffer
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>

" enable resizing splits via mouse

" :set mouse=n
" :set ttymouse=xterm2

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1

" Personal prefs
:set number
:set colorcolumn=79
:set autoread
" trim trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
set pastetoggle=<F2>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" fugitive status line
set statusline+=%{fugitive#statusline()}

" movement, and editing
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

