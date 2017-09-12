"
" Vundle setup
" ---------------------------------------------------------------------------- "
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

"
" Define the plugins to be used
" ---------------------------------------------------------------------------- "
"
Plugin 'vundlevim/vundle.vim'		" Make Vundle manages itself

" Core
Plugin 'vim-scripts/indexer.tar.gz'	" Painless transparent async tags file generation
Plugin 'vim-scripts/vimprj'		" Manage project-specific options
Plugin 'vim-scripts/dfrankutil'		" Scripts library (required by `indexer` and `vimprj`)
Plugin 'qpkorr/vim-bufkill'		" Delete file from the buffer and keep the window intact

" Interface
Plugin 'amiorin/vim-project'		" Select project on Vim startup
Plugin 'bling/vim-airline'		" Cool bottom statusline
Plugin 'scrooloose/nerdtree'		" Awesome file sidebar
Plugin 'lokaltog/vim-easymotion'	" Ninja-style text navigation ...
Plugin 'terryma/vim-multiple-cursors'	" ... and editing
Plugin 'kien/ctrlp.vim'			" Fuzzyfinder for everything
Plugin 'majutsushi/tagbar'		" Displays classes, methods and etc. for the current file
Plugin 'yggdroot/indentline'		" Indicates the indention levels with thin vertical lines

" Source code
Plugin 'valloric/youcompleteme'		" Source code autocompletion engine (python 2.6+ is required)
Plugin 'shawncplus/phpcomplete.vim'	" Improved PHP autocomplite
Plugin 'scrooloose/syntastic'		" Syntax checking hacks for Vim
Plugin 'mhinz/vim-grepper'		" Helps you win at grep
Plugin 'sirver/ultisnips'		" The ultimate snippet solution for Vim
Plugin 'honza/vim-snippets'		" Repository of snippets for `sirver/ultisnips`
Plugin 'jiangmiao/auto-pairs'		" Inserts autopairs for quotes and brackets
Plugin 'tpope/vim-surround'		" All about 'surroundings': parentheses, brackets, quotes, XML tags, and more

" PHP
Plugin 'arnaud-lb/vim-php-namespace'	" Types 'use' statements for you
Plugin 'alvan/vim-php-manual'		" Read PHP documentation in Vim
Plugin 'tobys/pdv'			" Generates docblocks
Plugin 'tobys/vmustache'		" Mustache template system for VIMScript (required by `tobys/pdv`)

" JS
Plugin 'kchmck/vim-coffee-script'	" CoffeeScript support

" Git
Plugin 'tpope/vim-fugitive'		" Add files, commit, pull and push to Git from Vim
Plugin 'xuyuanp/nerdtree-git-plugin'	" Displays Git status for files in NERDTree
Plugin 'airblade/vim-gitgutter'		" Shows a git diff in the gutter (sign column) and stages/undoes hunks

" Color themes
Plugin 'muellan/am-colors'		" Amcolors theme
Plugin 'flazz/vim-colorschemes'         " Tons of nicest colorschemes

" Misc
Plugin 'editorconfig/editorconfig-vim'	" Support for EditorConfig
Plugin 'tomtom/tlib_vim'		" Some utility functions for Vim

"
" ---------------------------------------------------------------------------- "
" All of your plugins must be added before this line
"
call vundle#end()
filetype plugin indent on



"
" Common settings
" ---------------------------------------------------------------------------- "
"
syntax on				" Auto enable syntax highlight
set encoding=utf-8			" Use utf-8 encoding as default
set noswapfile				" Don't use swap files
set autowrite				" Enable autosave when, switching to an other buffer
set binary				" Assume all the files as binary
set noeol				" No <EOL> will be written for the last line in the file
set shortmess+=I			" Get rid of Vim's defailt intro message
set hidden				" TODO
set confirm				" TODO

" The length of time Vim waits after you stop typing
set updatetime=250

" Get rid of backup files in the working directory
set backup
set writebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Vim will ignore this dirs and files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/cache/*,vendor,node_modules,.sass-cache



"
" Experimental zone
" ---------------------------------------------------------------------------- "
"
" A good place to play with new options before placing them into proper section
"
"



"
" ---------------------------------------------------------------------------- "
" End experimental zone
"



"
" GUI settings (gtk-vim)
" ---------------------------------------------------------------------------- "
"

" Disable menus
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Disable mouse
" set mouse=c				



"
" Visuals
" ---------------------------------------------------------------------------- "
"
set noshowmode				" Disable statusline at the bottom (by reason of Airline plugin is used)
set cursorline				" Highlight the line under the cursor
set number				" Enable showing line numbers
set scrolloff=5				" Set the number of lines from top or bottom, to start scroll
set linespace=6				" Increase the space between lines

" Add a 80 chars border highlight
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")
set fillchars+=vert:\ 
hi ColorColumn guibg=#ffffff ctermbg=252

" Code indentation settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Copy the structure of the existing lines indent when autoindenting a new line
set copyindent

" When changing the indent of the current line, preserve as much of the indent
" structure as possible
set preserveindent



"
" Theme
" ---------------------------------------------------------------------------- "
"
" Find more here:
" - https://vimcolors.com/
" - https://github.com/flazz/vim-colorschemes
"

" Selected colorscheme

" Gruvbox is my colorscheme of choice, because it is the shit.
" Just take a look! - https://github.com/morhetz/gruvbox
colorscheme gruvbox

" Be more strict looking
let g:gruvbox_italic=0

" Some more tweaks
set bg=dark
hi NonText guifg=bg



"
" Common Keymaps
" ---------------------------------------------------------------------------- "
"

" Reload .vimrc by Crtl+F12
nmap <C-F12> :so ~/.vimrc<cr>

" Define leader key
let mapleader = ","
let g:mapleader = ","

" Save by F8
map <F8> :w!<cr>

" Close buffer by F4
map <F4> :BD<cr>

" Switch to next/previous buffers by <Alt+h> and <Alt+l>
nnoremap <silent> <M-l> :bnext<CR>
nnoremap <silent> <M-h> :bprevious<CR>

" Escape to noraml mode by double `j`
imap jj <Esc>

" Close quickfix-buffer by double escape
noremap <silent> <Esc><Esc> :ccl<CR>

" Disable arrow-keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Copy from and paste to system clipboard
vmap <silent> <C-c> "+y
nmap <silent> <C-v> "+p
imap <silent> <C-v> <Esc>"+p

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l



"
" Airline plugin options
" ---------------------------------------------------------------------------- "
"
" Ubuntu Powerline fonts available from here:
" https://github.com/powerline/fonts/tree/master/UbuntuMono
"
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_theme = 'dark'



"
" Vim-project plugin options
" ---------------------------------------------------------------------------- "
"
source ~/.vim_projects
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/



"
" NERDTree plugin options
" ---------------------------------------------------------------------------- "
"
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 30
let g:tagbar_width = 30
let g:nerdtree_tabs_smart_startup_focus=2
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_autoclose=0
let g:nerdtree_tabs_autofind=1
let g:NERDTreeShowHidden=1
map <leader><C-n> :NERDTreeToggle<CR>
map <silent> <leader>r :NERDTreeFind<CR> <C-w>p
let g:NERDTreeIgnore=['\.git$', '\~$']



"
" NERDtree git plugin options
" ---------------------------------------------------------------------------- "
"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "!",
    \ "Renamed"   : "-",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "#",
    \ "Dirty"     : "*",
    \ "Clean"     : "_",
    \ "Unknown"   : "?"
\ }



"
" Tagbar plugin options
" ---------------------------------------------------------------------------- "
"
"

" Open Tagbar while entering source files
autocmd FileType php,python,ruby,js nested :TagbarOpen

" Open Tagbar with Leader key followed by Ctrl+t
nmap <Leader><C-t> :TagbarToggle<CR>

" PHP options
let g:tagbar_type_php  = {
  \ 'ctagstype' : 'php',
  \ 'kinds'     : [
    \ 'c:classes',
    \ 'i:interfaces',
    \ 'd:constant definitions',
    \ 'f:functions',
  \ ]
\ }

" Visual settings
let g:tagbar_iconchars = ['▸', '▾'] 


"
" CTR-P plugin options
" ---------------------------------------------------------------------------- "
"
" Fuzzy finder for everything.
"
"
nmap <silent> <leader><C-p> :CtrlPTag<CR>
nmap <silent> <leader><C-c> :CtrlPBufTag<CR>
nmap <C-c> :CtrlPBuffer<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:15'



"
" Indexer plugin options
" ---------------------------------------------------------------------------- "
"
" The cool guy, that deal with tags rendexing for your projects.
"
"

" Where the list of the your projects lives
let g:indexer_indexerListFilename="~/.vim/indexer/indexer_files"

" Disable warnings (if any)
let g:indexer_disableCtagsWarning = 1



"
" EasyMotion plugin options
" ---------------------------------------------------------------------------- "
"
let g:EasyMotion_leader_key = '<Leader>'



"
" VimGrepper plugin options
" ---------------------------------------------------------------------------- "
"
" Helps you win at grep.
"
"
nnoremap <Leader><C-g> :Grepper -tool git<cr>
nnoremap <Leader><C-G> :Grepper -tool grep<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)



"
" vim-php-namespace plugin options
" ---------------------------------------------------------------------------- "
"

" Insert use
function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Expand class
function! IPhpExpandClass()
	call PhpExpandClass()
	call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>



"
" YouCompleteMe plugin options
" ---------------------------------------------------------------------------- "
"

let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_invoke_completion = '<C-F>'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Use Ctrl+k & Ctrl+j to navigate completion popup menu
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <CR>  ((pumvisible())?("\<C-y>"):("\<CR>"))



"
" Snipmate plugin options
" ---------------------------------------------------------------------------- "
"
let g:UltiSnipsExpandTrigger='<c-S>'



"
" Syntastic plugin option
" ---------------------------------------------------------------------------- "
"
map <leader>so :SyntasticToggleMode<CR>
let s:php_executable='/usr/bin/php'
let g:syntastic_php_checkers = ['php']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



"
" PHP Documentator plugin option
" ---------------------------------------------------------------------------- "
"
let g:pdv_template_dir = $HOME."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <leader><c-d> :call pdv#DocumentWithSnip()<CR>



"
" Gitgutter plugin options
" ---------------------------------------------------------------------------- "
"
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk



"
" Indentline plugin options
" ---------------------------------------------------------------------------- "
"
let g:indentLine_char = '┆'
let g:indentLine_color_gui = '#3F3F3F'



"
" Laravel framework commons
" ---------------------------------------------------------------------------- "
"
nmap <leader>lra :e routes/api.php<cr>
nmap <leader>lrw :e routes/web.php<cr>
nmap <leader>lca :e config/app.php<cr>
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>



"
" Useful functions
" ---------------------------------------------------------------------------- "
"

" Update the project tags and file index
fun! IndexerRebuildAndCtrlPClearAllCaches()
	execute 'CtrlPClearAllCaches'
	execute 'IndexerRebuild'
	echo "Cleared All Tags Caches & Rebuild Index..."
endfun
nnoremap <F10> :call IndexerRebuildAndCtrlPClearAllCaches()<CR>

" Remove trailing whitespace by vim
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun
autocmd FileType php,python,ruby,js,c,cpp autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" Replase tabs with 4 spaces
fun! <SID>ReplaceTabsWithFourSpaces()
	let l = line(".")
	let c = col(".")
	%s/\t/    /egi
	call cursor(l, c)
endfun
" autocmd FileType php,python,ruby,js,c,cpp autocmd BufWritePre <buffer> :call <SID>ReplaceTabsWithFourSpaces()



"
" Cyrillic key maping
" ---------------------------------------------------------------------------- "
"
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map . /
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map , ?