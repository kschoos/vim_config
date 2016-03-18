execute pathogen#infect()
syntax on
filetype plugin indent on
let mapleader="#"

let javascript_enable_domhtmlcss = 1

set backspace=indent,eol,start
set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab

if !has('gui_running')
      set t_Co=256
endif

set nu

let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"O":""}',
      \},
      \ 'separator': { 'left': '>', 'right': '<'  },
      \ 'subseparator': { 'left': '>', 'right': '<'  }
      \}

imap ii <Esc>
noremap <Leader>u :silent !java -jar $JSTD_HOME/JsTestDriver-1.3.5.jar --config jstd.cfg --tests all --reset<CR><C-l>
nnoremap <Leader>b :!browserify -t [ babelify --presets [ react  ]  ] main.js -o bundle.js
nnoremap <Leader>r :w<CR>:!~/reload-chrome Mozilla
nnoremap <Leader>c :exe ':silent !firefox index.html&'<CR><C-l>
nnoremap <Leader>v :tabe ~/.vimrc<CR>
nnoremap <Leader>p "+p
nnoremap <Leader>y "+y
