set t_Co=256
:colors zenburn

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'tpope/vim-vinegar'
Plug 'vim-syntastic/syntastic'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'terryma/vim-expand-region'
Plug 'gabrielelana/vim-markdown'
Plug 'tpope/vim-fugitive'

call plug#end()

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

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

" let g:syntastic_rust_checkers = ['cargo']

" Personal prefs
:set number
:set colorcolumn=80
" trim trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" fugitive status line
set statusline+=%{fugitive#statusline()}



" stuff wanted for ctrl-space
set nocompatible
set showtabline=0

if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1


" movement, and editing
nmap <M-up> {
nmap <M-down> }
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

