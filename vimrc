" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)


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
nnoremap ; :

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

map <c-b> :bn<cr>
nnoremap <c-a> <c-^><cr>


augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

set runtimepath^=~/.vim/bundle/ctrlp.vim 

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svn     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


execute pathogen#infect()

vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
let g:airline_powerline_fonts = 1

set laststatus=2
let g:airline_theme='molokai'
" associate *.foo with php filetype
au BufRead,BufNewFile Vagrantfile setfiletype ruby


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set rtp+=~/.fzf
nnoremap <silent> <leader>; :Lines<CR>
nnoremap <silent> <leader>f :Files <CR>
nnoremap <silent> <leader>t :Files ~<CR>
nnoremap <silent> <leader>v :e ~/.vim/vimrc<CR>
nnoremap <silent> <leader>w :Buffers<CR>
set switchbuf=usetab,newtab
set paste

vnoremap // y/<C-R>"<CR>
autocmd VimEnter * tabnew ~/.SCRATCH | r  ! date 
autocmd VimEnter * tabnext
