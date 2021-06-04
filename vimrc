"Command to install vim-pluge "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'morhetz/gruvbox'

call plug#end()

"Plugin Configurations
let $FZF_DEFAULT_COMMAND = 'find -L'

"NeoVim Configuration`
set nocompatible	" disables compatibility to old-time vi
set showmatch		" shows matching brackets
set encoding=utf-8 	" The encoding displayed 
set nowrap		" Display long lines as just one line
set hidden 		" Required to keep multiple buffers open multiple buffers 
set splitbelow
set splitright
set smartindent 	" Makes indenting smart
set autoindent		" Good auto indent
set background=light
set clipboard=unnamed 
set termguicolors	" for gruvbox 
set ignorecase		" case insensitive matching 
set noswapfile 		" Disables swap files
set autoread		" automatically updates file when changed elsewhere
set hlsearch 		" highlights search results
set number		" add line numbers
syntax on 		" syntax highlighting

let mapleader="\<space>"
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :FZF<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"Other Configurations
autocmd! FocusGained,BufEnter * checktime "triggers autoread evertime a window or buffer is entered 
