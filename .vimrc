" -------------------
"  GENERAL SETTINGS  
" -------------------
runtime! debian.vim
let mapleader=" "
syntax on
set autowrite		" Automatically save before commands like :next and :make

"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" ---------------
"  TAB SETTINGS
" ---------------
if has("autocmd")
  filetype plugin indent on
endif

set autoindent
set smarttab
set si              " Smart indent
set ai              " Auto indent
set wrap            " Line Wrap
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" ----------------
"  STATUS & INFO
" ----------------
set laststatus=2
set statusline=\ %{HasPaste()}
set statusline+=%F
set statusline+=%m%r
set statusline+=\ \ \ Line:\ %l/%L
set statusline+=\ \ Col:\ %c
set statusline+=%=
set statusline+=[%{strlen(&fenc)?&fenc:&enc}
set statusline+=\ %{&fileformat}] 
set number
set showcmd		    " Show (partial) command in status line.

" ---------
"  SEARCH
" ---------
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search

" Turn on spell check
map <leader>ss :setlocal spell!<cr>

" ----------
"  MOVEMENT
" ----------
" Go to a certain tab
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt

" Move normally between wrapped lines
map j gj
map k gk

" -----------
"  FUNCTIONS
" -----------
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
