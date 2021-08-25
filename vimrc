set nu " Display line number
set autoindent " Indent automatically
set cindent " Auto-indent for C programming
set smartindent " Smart indent
"set nowrapscan "Don't go to the first line when scan the file
set ruler  "Display current cursor
set tabstop=2 " (ts=2) Tabsize
set shiftwidth=2 "Set width of auto indent (sw=2)
set softtabstop=2 "(sts=2) 
set showmatch "Highlight corresponding bracket
set history=256
set laststatus=2   "Always display status
"" The width and height of the vim window
"set co=84 " The width of the vim window
"set lines=50 " The height of the vim window


set mps+=<:> " Add the pair for < >
set mps+={:} " 
"set paste!  "Remove staircase phenomenon
set scrolloff=2
set expandtab " Input blank space instead of tab
set smarttab
set bs=eol,start,indent " Use backspace
set wmnu " Show the possible list when autofilling 
"set fileencodings=utf-8,euc-kr " Set file encoding
set encoding=utf-8
set fileencodings=utf-8,cp949

set title
set autowrite
set autoread
set wildmode=longest,list

"""" Search Function Setting
set hlsearch "Highlighting Keyworkd
set incsearch " Searching starts after you enter the string
set smartcase "case-sensitive search
set ignorecase 


set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"" Make it red, when the line goes over 80
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%81v.\+/

"Locate the cursor at the place exited last
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
 
"Use syntax highlighting
if has("syntax")
  syntax on
endif

" File Encoding to Korean
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

" Position Mark
map <C-k>1 mA
map <C-k>2 mB
map <C-k>3 mC
map <C-k>4 mD
map <C-k>5 mE
map <C-k>6 mF
map <C-k>7 mG
map <C-k>8 mH
map <C-k>9 mI
  
map 11 :w<CR>'A
map 22 :w<CR>'B
map 33 :w<CR>'C
map 44 :w<CR>'D
map 55 :w<CR>'E
map 66 :w<CR>'F
map 77 :w<CR>'G
map 88 :w<CR>'H
map 99 :w<CR>'I
map `` :e#<CR>

" Shortcut

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Open Header or Source file
map <s-z> :vs %:r.cc<CR>
map <s-x> :vs %:r.h<CR>

" gt gT mapping
noremap <S-l> gt
noremap <S-h> gT

" highlight without moving to next word
nnoremap <silent> * :execute "normal! #N"<cr>
nnoremap <silent> # :execute "normal! *N"<cr>

" Set the color of the highlight 
highlight Comment term=bold cterm=bold ctermfg=4
hi Search ctermbg=DarkGray cterm=bold ctermfg=Yellow
hi Visual ctermbg=LightGreen cterm=bold ctermfg=DarkBlue guifg=Yellow guibg=#FFFFFF
colorscheme desert


