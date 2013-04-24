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
Bundle 'tpope/vim-surround'
Bundle 'Shougo/neocomplcache'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'myusuf3/numbers.vim'

"Color schemes
Bundle 'goatslacker/mango.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'noahfrederick/Hemisu'

filetype plugin indent on

"Color
syntax on
set background=dark
color solarized

"Tab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Vim basics
set relativenumber
set mouse=a
set showmatch
set autoread
set spell
set spelllang=en_us
set splitright
set autochdir
set virtualedit=onemore
set history=50
set visualbell
set cursorline
set ttyfast
set ruler
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set laststatus=2

"Clean up those extraneous files
set nobackup
set noswapfile

"Things learned from Steve Losh
"http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set nocompatible
set modelines=0

"Leader key 
let leader = ","

"searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Text Width
set colorcolumn=85

"Fix j + k  movements to more sensible
nnoremap j gj
nnoremap k gk

" have Q reformat the current paragraph (or selected text if there is any): "
nnoremap Q gqap
vnoremap Q gq

"stupid fat fingers making stupid capital letters
cmap W w
cmap Q q
cmap WQ wq
cmap wQ wq

"because shift can be hard sometimes
nnoremap ; :

"stop recording accidentally"
nmap q :

" Periodical auto-save
" Write to disk after 1 second of inactivity, once every 15 seconds.
au BufRead,BufNewFile * let b:last_autosave=localtime()
au CursorHold * call UpdateFile()
au BufWritePre * let b:last_autosave=localtime()
set updatetime=1000
function! UpdateFile()
    if exists("b:last_autosave") && ((localtime() - b:last_autosave) >= 15)
        update
        let b:last_autosave=localtime()
    endif
endfunction

"save file when we lose focus as double precaution
au FocusLost * :wa

"Tabularize
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif


"nerdTree
map <C-e> :NERDTreeToggle<CR>

"Neocomplcache
let g:neocomplcache_enable_at_startup = 1

"Filetypes
autocmd BufNewFile,BufRead *.scss               set ft=scss.css
autocmd BufNewFile,BufRead Vagrantfile          set ft=Vagrantfile.ruby
au BufNewFile,BufRead vhosts setf apache

"completions
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

    "Hide and go back to terminal
    au VimLeave * !open -a Terminal

endif
