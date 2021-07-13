
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'jreybert/vimagit'
" Plug 'prettier/vim-prettier' , { 'do':'yarn install' }
Plug 'Yggdroot/indentLine' " indentLine
" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()

" setup
set termguicolors
lua require'colorizer'.setup()

" Neovim configuration
syntax on
colorscheme onedark
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set list
set showcmd
set nowrap

" set timeout=3000
"
nnoremap <leader>sv :source $MYVIMRC<CR>
" nnoremap <F6> :NERDTreeFocus<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFocus<CR>
nnoremap <leader>nr :NERDTreeRefreshRoot<CR>
let g:onedark_termcolors=256
set termguicolors
lua require'colorizer'.setup()

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_statuline_ontop=1


" vimgit configuration
let g:magit_default_fold_level = 0

" IndentLine configuration
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" vim prettier config
" let g:prettier#quickfix_enabled=0
" let g:prettier#autoformat=0

