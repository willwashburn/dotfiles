set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Vundle Managn' Vundle
Bundle 'gmarik/vundle'

"Github Bundles
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'pangloss/vim-javascript'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Tabular'

Bundle 'Shougo/neocomplcache'

Bundle 'goatslacker/mango.vim'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

"Vim basics
set number
set mouse=a
set showmatch
set nobackup
set noswapfile
set autoread
set spell
set spelllang=en_us

"Color
syntax on
set background=dark
color solarized

"Tab
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"
set splitright
set autochdir
set virtualedit=onemore
set history=50
set hidden
set visualbell

"http://www.guckes.net/vim/setup.html
set sc "show cmds
set tw=80 "text width

"stupid fat fingers making stupid capital letters
cmap W w
cmap Q q
cmap WQ wq
cmap wQ wq

"nerdTree
map <C-e> :NERDTreeToggle<CR>

"Neocomplcache
let g:neocomplcache_enable_at_startup = 1

autocmd BufNewFile,BufRead *.scss             set ft=scss.css

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" MacVim
if has("gui_macvim")
    set transp=2
    "set anti enc=uf-8 gfn=Source_Code_Pro:h16,Menlo:h14,Monaco:h14
    set fuoptions=maxvert,maxhorz

    " Copy/paste on mac
    " (http://www.drbunsen.org/text-triumvirate.html#vim)
    " Yank text to the OS X clipboard
    noremap <leader>y "*y
    noremap <leader>yy "*Y
    " Preserve indentation while pasting text from the OS X clipboard
    noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
    noremap <c-tab> :tabnext<cr>
endif

