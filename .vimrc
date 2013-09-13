syntax enable
syntax on
filetype plugin indent on

call pathogen#infect()
Helptags

" GUI options
if has('gui_running')
  set guifont=inconsolata\ 9
  set guioptions-=T
  set guioptions-=mL
  set guioptions-=mTmLmRLt
  set guioptions-=mr
endif

set autoindent
set backspace=2
set clipboard=unnamed
set encoding=utf-8 fileencoding=utf-8 termencoding=utf8
set expandtab
set exrc
set laststatus=2
set nowrap
set ruler
set shiftwidth=2
set smartindent
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set wildmenu

" Colors
set background=dark
colo inkpot
hi ColorColumn ctermbg=236 guibg=#4c425d
let &colorcolumn="81,".join(range(100,999),',')
hi Cursorline  ctermbg=234 guibg=#4c425d
hi Search ctermbg=170 guibg=#cc92ef

set cursorline
set hlsearch
set number

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
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

" Spell checking for markdown and tex files
function! SetSpellingOn()
  set spell
  hi clear SpellBad
  hi SpellBad cterm=underline ctermfg=46 gui=underline guifg=#33e233
endfunction
au BufReadPost,BufNewFile *.md\|tex\|wiki call SetSpellingOn()

au BufRead,BufNewFile *.md\|wiki setl textwidth=80

" Settings for haskell-mode vim
au BufEnter *.hs compiler ghc
let g:haddock_browser="/usr/bin/firefox"

function! HalveIndent()
  exe '%s/^\(\s*\)\1/\1/'
endfunction

" Alignment commands
"
" Aligns things after the first colon
nnoremap ,t: :Tabularize /^[^:]*:\zs/l1<CR>
vnoremap ,t: :Tabularize /^[^:]*:\zs/l1<CR>

" Aligns the *first* equals sign
nnoremap ,t= :Tabularize /^[^=]*\zs=/<CR>
vnoremap ,t= :Tabularize /^[^=]*\zs=/<CR>

" Pylint
" autocmd FileType python compiler pylint

" Remove trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e

" Coffee Script customization
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" Vim indent guides
if !has('gui_running')
  hi IndentGuidesOdd ctermbg=238
  hi IndentGuidesEven ctermbg=236
  let g:indent_guides_auto_colors = 0
endif
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filtypes = ['help', 'nerdtree', 'tex']
