" 2 space indent
set tabstop=2
set shiftwidth=2
set expandtab

" 256 colour support
set t_Co=256
let g:solarized_termcolors=256
set background=dark

" Vertical line on column 80
set cursorline
set cursorcolumn
set colorcolumn=80

set nocompatible
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" TagBar shows the list of tags (variables, functions, classes etc) in a
" sidebar
Plug 'majutsushi/tagbar'

" Comment/uncomment bindings for most languages
Plug 'scrooloose/nerdcommenter'

" Git integration
Plug 'tpope/vim-fugitive'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'lbn/vim-snippets'

" The Silver Searcher - fast alternative to ack and rgrep
Plug 'rking/ag.vim'

" Themes
Plug 'altercation/vim-colors-solarized'

" Syntax checking for many languages
Plug 'scrooloose/syntastic'

Plug 'powerline/powerline'

" Markdown syntax
Plug 'tpope/vim-markdown'


" Javascript

" Livescript
Plug 'gkz/vim-ls'

Plug 'danro/rename.vim'
Plug 'wesQ3/vim-windowswap'

Plug 'bkad/CamelCaseMotion'

Plug 'fatih/vim-go'

Plug 'editorconfig/editorconfig-vim'


" gnupg encryption
Plug 'jamessan/vim-gnupg'

call plug#end()

colorscheme solarized



nmap <F8> :TagbarToggle<CR>

" Format JSON files
nmap =j :%!python -m json.tool<CR>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" background erase fix
set t_ut=

"Set Python breakpoint
au FileType python map <silent> <leader>b oimport pdb; pdb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport pdb; pdb.set_trace()<esc>

"Line numbers
set number


" Syntastic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" Automatically save and load views
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
