
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set number
set relativenumber

colorscheme xoria256
set pastetoggle=<f5>
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

let mapleader=","
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
noremap <F3> :Autoformat<CR><CR>
nnoremap <F5> :GundoToggle<CR>

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
command! -nargs=1 -complete=command -bang Qdo exe 'args '.QuickfixFilenames() | argdo<bang> <args>
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once.
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction


" Source the vimrc file after saving it
if has("autocmd")
   autocmd bufwritepost .vimrc source $MYVIMRC
endif

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Run this command automatically when a file is saved
autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

au BufRead,BufNewFile *.tac set filetype=python
