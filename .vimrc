call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ycm-core/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'psf/black', { 'tag': '19.10b0' }
"Plug 'SirVer/ultisnips'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()
set number
syntax on
colorscheme vim-monokai-tasty
let g:airline_theme='monokai_tasty'
let g:python_highlight_all = 1
set hlsearch
set encoding=utf-8
autocmd VimEnter * wincmd p
set expandtab ts=4 sw=4 ai
set cursorline
set timeoutlen=1000 ttimeoutlen=0
highlight ColorColumn ctermbg=black
set colorcolumn=80
nmap <F6> :NERDTreeToggle<CR>
command! What echo synIDattr(synID(line('.'),col('.'), 1), 'name')
" locking arrow keys
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>
"let g:livepreview_engine= 'latexmk' . '-pdf'
"autocmd FileType tex LLPStartPreview
set conceallevel=0
"autocmd FileType tex nmap <buffer> <C-T> :!latexmk -C<CR>
"autocmd FileType tex nmap <buffer> <C-R> :silent !okular %<.pdf & <CR>
autocmd BufWritePost *.tex !latexmk -pdf 
