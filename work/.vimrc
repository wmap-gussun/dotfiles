""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim rc
"
" author: Viktor Danhall
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{ Generic

" Take me to your leader
let mapleader=","

" Remove file backups
" set nobackup noswapfile
set swapfile
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp//

" Keep an extensive history! :D
set undolevels=1000
set history=1000

" set whichwrap+=b,s,<,>,h,l,[,]
" auto-indentation
set autoindent smartindent

" Auto-read filechanges (will complain if file is changed wile editing)
set autoread

" Smarter tab-completion
set wildmenu
set wildignore+=*.o,*~,.lo,*.exe,*.bak
set wildmode=longest:full

" Word wrap!
set wrap linebreak

" Set height of the command-bar
set cmdheight=1

" Define behaviour of the autocompletion <C-p><C-n>
set complete=.,w,b,u,U,t,i,d

" Regex-magic
set magic
set showmatch hlsearch incsearch
set ignorecase smartcase

" cool feedback stuff
"set number
set cursorline ruler relativenumber showmode showcmd
set statusline =%.40F\ [b%n]%y%m%=[char:%04B]%k[line:%04l/%04L][col:%03c][%P]
set laststatus =2	" Always show statusline for window

" Enable mouse (for when I'm lazy)
set mouse=a
" Keep buffers open, but hidden when not in window
set hidden

" Disable all bells
set noerrorbells visualbell t_vb=

" Always keep 5 lines above/below cursor
set scrolloff=5

"
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show whitespace
set list
set listchars=tab:>→,trail:~,extends:>,precedes:<

" Change the split default window
set splitbelow splitright

"
"set foldmethod=marker
" }}}
" {{{ vimdiff
set diffopt+=iwhite
" }}}

" Color and syntax highlight
colorscheme elflord
syntax on
" Force vim to sync syntax from start of file (less error prone)
syntax sync fromstart
"filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard remaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" {{{ Keyboard shortcuts
" Move splits with ctrl-navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <C-Up> <C-W><C-K>
nnoremap <silent> <C-Down> <C-W><C-J>
nnoremap <silent> <C-Left> <C-W><C-H>
nnoremap <silent> <C-Right> <C-W><C-L>
"nnoremap <C-S-J> <C-W><S-J>
"nnoremap <leader>t  :TlistToggle<CR>
" }}}
" {{{ Commands
" force sudo
cnoremap w!! w !sudo tee > /dev/null %

" Anti-thick-finger remaps
command! -bang -nargs=? -complete=file E e<bang> <args>
command! -bang -nargs=? -complete=file W w<bang> <args>
command! -bang -nargs=? -complete=file Wq wq<bang> <args>
command! -bang -nargs=? -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wall wall<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" map jk to escape in insert mode :D
"inoremap jk <esc>

noremap k gk
noremap j gj
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Right> <Nop>
"noremap <Left> <Nop>

" svn short
"command -nargs=1 CI ! svn ci -m '<f-args>'
command SVNCI       ! svn ci
command SVNADD      ! svn add %
" Convenience (i like boxes :D)
"command GetBoxCars		normal i─│┌┘┐└┼┬┴├┤
"
"command DebugJson		call DebugJson()
" }}}

" PHP documenter script bound to Control-P
"autocmd FileType php inoremap <C-i> <ESC>:call PhpDocSingle()<CR>i
"autocmd FileType php nnoremap <C-i> :call PhpDocSingle()<CR>
"autocmd FileType php vnoremap <C-i> :call PhpDocRange()<CR>
" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" {{{ PhpDoc
"let g:pdv_cfg_Author = "Viktor Danhall <viktor.danhall@playipp.com>"
"nnoremap <C-i> :call PhpDocSingle()<CR>
"nnoremap <leader>doc       :call PhpDocSingle()<CR>
" }}}

"iab <expr> timestmp strftime("%Y-%m-%d")

"vmap <silent>sf        <Plug>SQLU_Formatter<CR> 

" qbuf key
"let g:qb_hotkey = "<Leader>b"
"DBSetOption cmd_terminator=;

" dbext config
"source ~/.vim/db.vim
"let g:dbext_default_type         = 'MYSQL'
"let g:dbext_default_buffer_lines = 50
"let g:dbext_default_profile      = '0_localhost'
set clipboard=unnamed

hi StatusLine ctermbg=black ctermfg=red

