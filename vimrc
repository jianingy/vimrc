
set backupdir=/tmp directory=/tmp
set modeline si ai incsearch sw=4 ts=4 history=64 encoding=UTF-8
set formatoptions-=t textwidth=76 "only wrap when in comment
set hlsearch
set modeline
"encoding
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

" Fix Backspace for MacOSX
set backspace=indent,eol,start
filetype on
syntax on

" Highlight trailing white-spaces
let c_space_errors=1
autocmd Syntax * syn match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight Comment ctermfg=darkgray

" Useful Shortcuts
map <F5> <esc>:w<cr>:make<cr>
map <F6> :cn<cr>
map <F7> :cN<cr>
map <F4> @:

"for drupal development
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
  augroup END
endif
set t_Co=256
colorscheme Tomorrow-Night
