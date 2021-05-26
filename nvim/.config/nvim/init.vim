"--------------------------------------"
"_ __   ___  _____   _(_)_ __ ____     "
" | '_ \ / _ \/ _ \ \ / / | '_ ` _ \   "
" | | | |  __/ (_) \ V /| | | | | | |  "
" |_| |_|\___|\___/ \_/ |_|_| |_| |_|  "
"				       				   "
"--------------------------------------"
"
call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

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
set noswapfile
syntax enable
set shiftwidth=4
set smarttab
set tabstop=4
set ignorecase
set encoding=UTF-8
set relativenumber
set scrolloff=25
set termguicolors

" presence.nvim
let g:presence_auto_update 			= 1
let g:presence_neovim_image_text 	= "The One True Text Editor"
let g:presence_main_image 			= "neovim"
let g:presence_client_id 			= "793271441293967371"
let g:presence_log_level 			= "debug"
let g:presence_debounce_timeout 	= 10
let g:presence_enable_line_number 	= 0
let g:presence_editing_text 		= "Editing %s"
let g:presence_file_explorer_text 	= "Browsing %s"
let g:presence_git_commit_text 		= "Committing changes"
let g:presence_plugin_manager_text 	= "Managing plugins"
let g:presence_reading_text 		= "Reading %s"
let g:presence_workspace_text 		= "Working on %s"
let g:presence_line_number_text 	= "Line %s out of %s"
" Highlighted yank
let g:highlightedyank_highlight_duration = 1000
" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
" Deoplete
let g:deoplete#enable_at_startup = 1
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
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
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" Neoformat
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

noremap <silent> <C-b> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>
nnoremap <C-p> :GFiles<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

hi HighlightedyankRegion cterm=reverse gui=reverse

colorscheme gruvbox
