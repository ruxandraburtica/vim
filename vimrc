set autoread
set nocompatible
set incsearch
set smartcase
set autoindent
set smartindent
set cindent
set nowrap
set ruler
set showmatch
set background=light
set bs=2
set undolevels=65536
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
syntax on
colorscheme default

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Keep __history__ lines of command line history
set history=1000

" Always show cursor position
set ruler

" Set terminal title to filename
set title

" Set paste/nopaste
nmap <F5> :set paste<CR>
nmap <F6> :set nopaste<CR>

" I should be able to quit also using CTRL-D
nmap <C-d> :q<CR>

" General search and replace template
nmap <F12> :%s///g

" You can tell you are in paste mode when the ruler is not visible
set pastetoggle=<F2>

" Suppress all spaces at end/beginning of lines
nmap ,c :%s/\s\+$//<CR>
nmap ,C :%s/^\s\+//<CR>

" Highlight everything that's over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
" Remove hightlights after searching something.
noremap <C-h> :noh<CR>

" Automatically delete the trailing spaces
autocmd BufWritePre *.py :%s/\s\+$//e

" ********************* VIM PLUGINS *********************
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()

" Tabs in vim
noremap <C-2> :2gt<CR>
noremap <C-3> :3gt<CR>
noremap <C-4> :4gt<CR>

" **** command-t plugin ****
" Firstly change the leader
let mapleader=","
noremap <C-f> :CommandT<CR>
noremap <C-l> :CommandTFlush<CR>
noremap <C-b> :CommandTBuffer<CR>

" **** NERDTree plugin ****
noremap <C-n> :NERDTree<CR>

" **** TagList plugin ****
noremap <C-t> :TlistToggle<CR>
noremap <C-o> :TlistOpen<CR>
" (After installing ctags) Set Tlist_Ctags_Cmd to the path where ctags is installed.
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
" Turn on filetype detection
filetype on

" The_setting_example_in_my_vimrc_file

" // Set one second time for refreshing
let g:SrcExpl_RefreshTime   = 1
" // Set the window height of the Souce Explorer
let g:SrcExpl_WinHeight     = 9
" // Let SrcExpl Plugin update the tags file when initializing
let g:SrcExpl_UpdateTags    = 1
" // Set "Space" key do the refreshing operation
let g:SrcExpl_RefreshMapKey = "<Space>"
" // Set "Ctrl-b" key go back from the definition context
let g:SrcExpl_GoBackMapKey  = "<C-b>"
" // The switch of Source Explorer plugin
nmap <F8> :SrcExplToggle<CR>

" **** vim-powerline ****
let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_cache_enabled = 0 " Enable caching
