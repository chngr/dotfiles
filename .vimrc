execute pathogen#infect()
syntax enable
syntax on
filetype plugin indent on
set clipboard=unnamedplus

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nowrap
set laststatus=2

set splitbelow
set splitright

" Search highlighting and removing highlighting
set hlsearch
hi Search ctermbg=LightBlue
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set cursorline
set colorcolumn=80

"hi Cursorline ctermbg=green

"set t_Co=256
colo molokai
"let g:solarized_termcolors=256
set background=dark
colo solarized
colo hybrid
colo jellybeans

set number

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:html_indent_inctags = "html, body, head, tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" ConqueTerm configurations
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_SendFileKey = '<F10>'
let g:ConqueTerm_SendVisKey = '<F9>'
let g:ConqueTerm_TERM = 'xterm'

" vim2hs configurations
let g:haskell_conceal_wide = 1

" Spell checking for markdown
au BufRead, BufNewFile *.md setlocal spell
au BufRead, BufNewFile *.tex setlocal spell

" Settings for haskell-mode vim
au BufEnter *.hs compiler ghc
let g:haddoc_browser="/usr/bin/firefox"

function! HalveIndent()
  exe '%s/^\(\s*\)\1/\1/'
endfunction

" Pylint
autocmd FileType python compiler pylint
