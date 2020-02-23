let g:plugged_home = '~/.config/nvim/plugged'
call plug#begin(g:plugged_home)
Plug 'junegunn/vim-plug'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'ryanoasis/vim-devicons'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'lervag/vimtex'
Plug 'Rigellute/rigel'
Plug 'dense-analysis/ale'
call plug#end()

set nocompatible
set backspace=indent,eol,start
set number
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw
set autoindent
set wildmenu
set wildmode=longest,list
set nobackup
set noswapfile
set nowritebackup
set ignorecase
set smartcase
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set showmode
set showcmd
set incsearch
set wrap
set laststatus=2
set ruler
set scrolloff=5
" set relativenumber
" colorscheme delek
" colorscheme nord
colorscheme rigel

set guifont=FuraCode\ Nerd\ Font:h14
set lines=40
set columns=80
set backupcopy=yes
" set transparency=15

if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

let g:mapleader = ' '

set viminfo+=n~/.config/nvim/tmp/viminfo
set backupdir=$HOME/.config/nvim/tmp/backup
set dir=$HOME/.config/nvim/tmp/swap
set viewdir=$HOME/.config/nvim/tmp/view
if !isdirectory(&backupdir) | call mkdir(&backupdir, 'p', 0700) | endif
if !isdirectory(&dir)       | call mkdir(&dir, 'p', 0700)       | endif
if !isdirectory(&viewdir)   | call mkdir(&viewdir, 'p', 0700)   | endif
;
" Persist undo history between Vim sessions.
if has('persistent_undo')
  set undodir=$HOME/.config/nvim/tmp/undo
    if !isdirectory(&undodir) | call mkdir(&undodir, 'p', 0700) | endif
endif
;
" Indent in visual and select mode automatically re-selects.
vnoremap > >gv
vnoremap < <gv

" Go to the last cursor location when opening a file.
augroup jump
  autocmd BufReadPost *
    \  if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \| exe 'normal! g`"'
    \| endif
augroup end
;
" Clean trailing whitespace.
fun! s:trim_whitespace()
  let l;:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun;
command! TrimWhitespace call s:trim_whitepace()

" nerdtree;
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" easymotion
map <Leade;r> <Plug>(easymotion-prefix)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Lea;der>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" vim-in;dent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:rigel_airline = 1
let g:airline_theme = 'rigel'

" coc
let g:coc_global_extensions = [
  \ 'coc-emoji', 'coc-eslint', 'coc-prettier',
  \ 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin',
  \ 'coc-css', 'coc-json', 'coc-python', 'coc-yaml',
  \ 'coc-java', 'coc-snippets', 'coc-git', 'coc-texlab',
  \ 'coc-marketplace', 'coc-highlight', 'coc-ccls'
  \ ]
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

:nmap <space>e :CocCommand explorer<CR>

" ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1

" python
let g:python3_host_prog = '/Users/awh4kc/.pyenv/versions/3.8.1/bin/python'
