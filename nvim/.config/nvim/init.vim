"--------------------------------------"
"_ __   ___  _____   _(_)_ __ ____     "
" | '_ \ / _ \/ _ \ \ / / | '_ ` _ \   "
" | | | |  __/ (_) \ V /| | | | | | |  "
" |_| |_|\___|\___/ \_/ |_|_| |_| |_|  "
"				       				   "
"--------------------------------------"

""""""""""""""""""""""""""""""""""""""""
" PLUGINS 							   "
""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
call plug#end()
									    		
""""""""""""""""""""""
" normal stuff 	     "
""""""""""""""""""""""
set number
set ttyfast
set showmode
set showcmd
set title
set number
set hidden
set ffs=unix,dos,mac
set nobackup
set nowritebackup
set shortmess=I
set nowb
set noshowmode
set noswapfile
set shiftwidth=4
set smarttab
set tabstop=4
set ignorecase
set encoding=UTF-8
set scrolloff=25
set termguicolors
set laststatus=0

""""""""""""""""""""""
" config for plugins "
""""""""""""""""""""""

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
" Deoplete
let g:deoplete#enable_at_startup = 1
" NERDTree
let g:NERDTreeShowHidden = 1 
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed 
let g:NERDTreeStatusline = ' ' " set to empty to use lightline
let g:NERDTreeHighlightFolders = 1 
let g:NERDTreeHighlightFoldersFullName = 1 
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeExtensionHighlightColor = {} 
let g:NERDTreeExtensionHighlightColor['css'] = s:blue 
let g:NERDTreeExactMatchHighlightColor = {} 
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange 
let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red 
let g:WebDevIconsDefaultFolderSymbolColor = s:beige 
let g:WebDevIconsDefaultFileSymbolColor = s:blue 
" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
" Airline
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

noremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>

hi HighlightedyankRegion cterm=reverse gui=reverse

colorscheme nord
