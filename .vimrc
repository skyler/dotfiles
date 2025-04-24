set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set formatoptions+=r
set number
set backspace=indent,eol,start
set cursorline
set smartindent
set ignorecase
set ruler

set re=2 " Fix TypeScript syntax highlighting on Mac, otherwise Vim locks up.

set ff=unix

filetype plugin indent on
syntax on
set title

:set nofixeol
:set nofixendofline

augroup terraform_fmt
    autocmd!
    autocmd BufWritePre *.tf,*.tfvars TerraformFmt
augroup END

autocmd BufRead,BufNewFile *.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2 

" Remember which line you were on in each opened file.
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let NERDTreeShowHidden=1
