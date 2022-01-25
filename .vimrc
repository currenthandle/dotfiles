" Vim Plug
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'mattn/emmet-vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
    \  'javascript.jsx' : {
        \      'extends' : 'jsx',
        \  },
    \  'typescript' : {
        \      'extends' : 'jsx',
        \  },
    \}

" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript
autocmd BufNewFile,BufRead *.tsx,*.ts set filetype=typescript

" looks for JSX in .js files
let g:jsx_ext_required = 0

filetype plugin indent on  

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" use 2 spaces width when working from Reddit
" autocmd BufNewFile,BufRead /Users/casey/Dev/reddit set tabstop=2 shiftwidth=2
au BufNewFile,BufRead ~/Dev/reddit/**/* setlocal sts=2 sw=2

" on pressing tab, insert 2 spaces
set expandtab

imap jj <Esc>

set noswapfile

set mouse=a

syntax enable
set background=dark
colorscheme solarized
