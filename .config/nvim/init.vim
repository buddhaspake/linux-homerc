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

" Set up vim-plug for NeoVim
" [1] Run the following command from terminal:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" [2] Install plugins:
call plug#begin()
Plug 'morhetz/gruvbox' " Theme
Plug 'jremmen/vim-ripgrep' " RipGREP
Plug 'tpope/vim-fugitive' " Git
Plug 'vim-utils/vim-man'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
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

let mapleader = " "
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
" Sessions
" Ensure that the directory ~/.config/nvim/sess/ is created...
nnoremap <leader>ss :mks ~/.config/nvim/sess/
nnoremap <leader>sl :source ~/.config/nvim/sess/
