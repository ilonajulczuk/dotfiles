set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set number
set ruler
set relativenumber
filetype indent on
syntax on
execute pathogen#infect()
syntax on
map <C-n> :NERDTreeToggle<CR>
:call pathogen#helptags()
nmap <F8> :TagbarToggle<CR>
let g:linters_extra = []
colorscheme blackboard
:set guioptions-=T  "remove toolbar
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

nmap <silent> <C-L>  <Plug>GoldenViewSplit

" 2. quickly switch current window with the main pane
" and toggle back
nmap <silent> <F7>   <Plug>GoldenViewSwitchMain
nmap <silent> <S-F7> <Plug>GoldenViewSwitchToggle

" 3. jump to next and previous window
nmap <silent> <C-J>  <Plug>GoldenViewNext
nmap <silent> <C-K>  <Plug>GoldenViewPrevious
if has("autocmd")
    autocmd BufReadPost fugitive://* set bufhidden=delete
endif

