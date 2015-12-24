set expandtab
set display=lastline
set tabstop=2 softtabstop=2

let mapleader = "-"

nnoremap <leader>n :NERDTree<enter>
nnoremap <leader>p vip
nnoremap <leader>cp vip<c-v>I--   <esc>
nnoremap <leader>tx :% ! tidy -i -xml -quiet
nnoremap <leader>tj :% ! python -mjson.tool
nnoremap <leader>cc :set cursorcolumn!<enter>

"let g:ctrlp_show_hidden = 1

"This unsets the "last search pattern" register by hitting return  
nnoremap <CR> :nohlsearch<CR><CR>

set incsearch
set hidden
set noerrorbells
set backspace=indent,eol,start
set autoindent
set encoding=utf-8

syntax enable
set cursorline
set hlsearch
set number
cnoremap <c-j> <t_kd>

cnoremap <c-k> <t_ku>
cnoremap <c-a> <home>
cnoremap <c-e> <end>

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

set runtimepath^=~/.vim/bundle/ctrlp.vim 

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


execute pathogen#infect()

let g:airline_powerline_fonts = 1

set laststatus=2
let g:airline_theme='molokai'
" associate *.foo with php filetype
au BufRead,BufNewFile Vagrantfile setfiletype ruby

