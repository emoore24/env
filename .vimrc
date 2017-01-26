set nocompatible  " We don't want to worry about compatibility with vi

"====================="
"    Essentials"
"====================="
let mapleader=',' " Map Leader is a special prefix for some commands

set hidden " Show hidden buffers

set history=50   " keep track of last commands

" Set runtimepath to include Google Drive .vim
"set rtp+=~/Google\ Drive/Code/env/.vim
"set rtp+=~/Google\ Drive/Code/env/.vim/after

" Uncomment to automatically change the working path to the path of the current file
" autocmd BufNewFile,BufEnter * silent! lcd %:p:h

"====================="
"Vundle Plugins"
"====================="
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" A better statusline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Awesome Code Completion
" Plugin 'Valloric/YouCompleteMe'
" nerdtree
Plugin 'scrooloose/nerdtree'
" Commenting Plugin
Plugin 'tpope/vim-commentary'
" Emmet
Plugin 'mattn/emmet-vim'
" Show git diffs in gutter
Plugin 'airblade/vim-gitgutter'
" Git Plugin
Plugin 'tpope/vim-fugitive'
" Code snippet engine
Plugin 'SirVer/ultisnips'
" Actual code snippets
Plugin 'honza/vim-snippets'
" CtrlP is a fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
" Auto set paste
Plugin 'ConradIrwin/vim-bracketed-paste'
" Better javascript syntax support
Plugin 'pangloss/vim-javascript'
" Syntax checking
Plugin 'scrooloose/syntastic'
" Color Schemes
Plugin 'endel/vim-github-colorscheme'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/seoul256.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'bcicen/vim-vice'
Plugin 'dracula/vim'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on " for plugins

"==========================="
"Vundle Plugin Configuration"
"==========================="

" Vim Airline "
" Enable smart line, that shows buffers when there is only one tab
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Nerdtree
" Open with ctrl-\
map <C-\> :NERDTreeToggle<CR>

" Emmet
" Enable emmet just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" Leader for Emmet
let g:user_emmet_leader_key='<C-Y>'

" Utilsnips
" Different triggers
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
" Define snippets folder
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetsDirectories = ["UltiSnips"]
" Automatically load jasmine snippets with javascript
autocmd FileType javascript UltiSnipsAddFiletypes javascript-jasmine

" CtrlP
" Set working path to cwd
let g:ctrlp_working_path_mode = 'ra'
" exclude node_modules, .git, .sass-cache
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|\.sass-cache)$',
  \ }
" Buffer switching with C-b
map <C-b> :CtrlPBuffer<CR>
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 48

" Syntastic
" always populate the location list with errors...
let g:syntastic_always_populate_loc_list = 1
" but don't auto open the location list
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" show all errors from all checkers at once
let g:syntastic_aggregate_errors = 1
" show which checker produced which error/warning
let g:syntastic_id_checkers = 1
" Uncomment these for checkers
" let g:syntastic_javascript_checkers = ['glint']
" let g:syntastic_java_checkers = ['glint']
" ignore angular templates
let g:syntastic_ignore_files = ['.*\.ng']

"=================="
"DISPLAY Options"
"=================="

"Color Scheme"
set t_Co=256
" VIM HYBRID
" let g:hybrid_custom_term_colors = 1
" colorscheme hybrid

" SEOUL 256 OPTIONS
" colorscheme seoul256
" For seoul256, 233 is darkest and 239 is lightest
" let g:seoul256_background = 234
set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
silent! colorscheme PaperColor


syntax on        " Turn on color highlighting
au BufReadPost *.ng set filetype=html " Syntax highlighting to html for angular templates


"Line Numbers"
set number " show line numbers
set relativenumber " relative line numbers
highlight LineNr ctermbg=8 ctermfg=white

" Ruler, cursorline (horizontal), colorcolumn (vertical)
set ruler
set cursorline     " Show which line the cursor is on
highlight CursorLine ctermbg=16
set colorcolumn=81      " Show a big column at 81 characters so I remember to wrap lines.
au BufReadPost *.ng set colorcolumn=101 " templates get column at 101 characters
au BufReadPost *.java set colorcolumn=101 " java files get column at 101 characters
au BufReadPost *.js set colorcolumn=81 " javascript files get column at 81 characters
highlight ColorColumn ctermbg=black

"Searching
set incsearch    " incremental searching on
set hlsearch     " highlight all matches.

"Spacing"
set expandtab      " Instead of a tab character, switch it to the equivalent number of spaces
set autoindent
set shiftwidth=2 " set shiftwidth to 2
set softtabstop=2
" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°

set showmatch           " Show matching braces.

" Line wrapping on by default
set wrap
set linebreak


" WINDOWS
set splitright " always split to the right
set splitbelow "always split to the bottom
" This makes it easier to switch between vim panes if you have multiple open.
" Control+L will move the cursor one pane Right, etc.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" TABS
" tab navigation like firefox
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <S-tab> <Esc>:tabprevious<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Scroll Offset (how many lines above/below cursor at all times)
set scrolloff=10

"======================"
"Non-Display Options"
"======================"

"Quitting"
" Because I hate when I hit q: and it enters Command mode, which I never use
map q: :q<CR>
" Because I hate when I type :Q or :W because I hold shift too long when trying to save or quit.
map W w
map Q q

set clipboard+=unnamed  " Yanks go on clipboard instead.

set backspace=indent,eol,start

