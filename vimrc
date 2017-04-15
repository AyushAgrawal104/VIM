    " here i am making >  as a leader in vimrc 
let mapleader=">"                     "till no use   new
"
"
"
" I have already working back space but to use it 
" set backspace=2
    ""
"
"Make working it like vim not as a vi
set nocompatible
"
"
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorcolumn=+1
"set pasttoggel
"set wrapmargin=10
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
set showmode                  " show mode of working
set number   		      " show numbering in  line
set numberwidth=7      "new 
set autoread                  " Re Load file changes outside vim
"set title
set ignorecase                " Igonore case in scearch
set hlsearch
set incsearch
set smartcase
set magic
set laststatus=2 		"dispaly status line
set encoding=utf-8
set autoindent 
set smartindent
syntax on
set showcmd
set cursorline
set sw=4
set ruler
let base16colorspace=256
set t_CO=256
set bg=light
set relativenumber             " Enable relative numbering
set history=50
colorscheme ron 
"
"Set scorolling when you are 8 line away from margin
set scrolloff=15                              "new
set sidescrolloff=15
set sidescroll=1
"
"
"
filetype plugin on
filetype indent on
"
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""''
set path+=**
set wildmenu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""MAPPING_STARTS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"set spell
""
"
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Esc""""""""""""""""
inoremap <leader><leader> <Esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap vs vsplit
cnoremap hs split
cnoremap ev vsplit $MYVIMRC<CR>
nnoremap  
nnoremap <c-j> <c-w><c-j> 
nnoremap  
nnoremap  
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
inoremap <Tab> =AutoTab()<CR>
"
""
"
"
""""""""""""""""""""""""""""""""""""""""TAB RELATED MAPPING""""""""""""""""""
"
"
"
cnoremap tn tabnew 
nnoremap <leader>n :tabn<CR>
"nnoremap :w<CR> :tabc<CR>
"
"
"""""""""""""""""""""""""""""""""""""""GENERAL""""""""""""""""""""""""""""""
"
"
"
nnoremap  :! vim 
nnoremap dw diw
nnoremap p "0p
"
""""""""""""""""""""""""""""""""""window split""""""""""""""""""""""""""
"
"
""""""""""""""""""""""""""""""""""""""WQ related seting""""""""""""""""""""
"
"
"
cnoremap WQ wq
cnoremap Wq wq
cnoremap wQ wq
cnoremap Q! q!
cnoremap q1 q!
cnoremap Q1 q!
cnoremap qw wq
cnoremap QW wq
cnoremap qW wq
cnoremap Qw wq
inoremap <leader>q <Esc>:q!<CR>
nnoremap <leader>q :q!<CR>
"
"
""""""""""""""""""""""""""""""""""""""OMNI COMPLETION""""""""""""""""""""""
"
set omnifunc=syntaxcomplete#Complete
"
"""""""""""""""""""""""""""""""""""""PASTING FROM OUTER WORD"""""""""""""""
"
"
""""""""""""""""""""""""""""""""""""saving and closing quickly""""""""""""
"
"
"
nnoremap  :w<CR>
nnoremap <leader>x :q<CR>
inoremap <silent> :w<CR>
inoremap <leader>x :q<CR>
"
"
""""""""""""""""""""""""""""""""""""Disable arrow keys in normal mode""""""""""""""""""
"
"
"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
"
"
"
"""""""""""""""""""""""""""""""""""backspace by capslock""""""""""""""""
"
"
"
inoremap <caps> <BS>
""""""""""""""""""""""""""""""""""""List all buffer""""""""""""""""""""""
"
"
"
nnoremap  :ls<CR>
"
"
""""""""""""""""""""""""""""""""""""File Specific mapping""""""""""""""""
"
"
"
au FileType java :call Java()
au BufRead,BufNewFile *.txt  :call Text()
"
"
"
""""""""""""""""""""functions"""""""""""""""""""""""""""""""""""""""""""""""""
"Use tab as a tab when it is on first line otherwise complete the spell
"
"
"
"
function! AutoTab()
    let col=col('.')-1
    if  !col || getline('.')[col - 1] !~ '\k'
	return "\<Tab>"
    else
	return "\"
    endif
endfunction
"
""
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""java"""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
function! Java()
    iabbrev <buffer> Sop System.out.println();<left><left>
    cnoremap javam r ~/vimsppnits/java <CR>
endfunction
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""txt""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
function! Text()
    setlocal spell
endfunction
    
