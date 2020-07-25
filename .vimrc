" Primeagen!
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap " Thanks Primeagen!
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch 
set guitablabel=\[%N]\ %t\ %M

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" PLUGINS!
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' " Theme
Plug 'jremmen/vim-ripgrep' " RipGREP
Plug 'tpope/vim-fugitive' " Git
Plug 'vim-utils/vim-man'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
Plug 'ycm-core/YouCompleteMe' " Autocomplete
Plug 'mbbill/undotree' " Traverse Undo
Plug 'itchyny/lightline.vim' " PrettyStatus
call plug#end()

" Theming
colorscheme gruvbox
set background=dark

" Post plugin handlers
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_liststyle = 3 " Tree explorer
let g:netrw_browse_split = 3 " Open in tab
let g:netrw_banner = 0 " Remove header
let g:netrw_winsize = 25 " Explorer width %
let g:ctrlp_use_caching = 0

" FZF
let g:fzf_layout = { 'down': '~25%' }
" Lightline
set laststatus=2
set noshowmode

" Remaps
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :Undotreeshow<CR>
nnoremap <leader>ff :wincmd v<bar> :Ex <bar> :vertical resize 20<CR>
nnoremap <leader>rr :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
" Global copy/paste
nnoremap <leader>y "+y<CR>
nnoremap <leader>p "+gp<CR>
" Working dir
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" FZF
nnoremap <leader>fz :FZF<CR>
" YouCompleteMe!
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
