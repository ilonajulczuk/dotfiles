execute pathogen#infect()
syntax on
filetype plugin on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

colorscheme molokai
set pastetoggle=<f5>
set number
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

let mapleader=","
nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
noremap <F3> :Autoformat<CR><CR>
nnoremap <F5> :GundoToggle<CR>
autocmd BufWritePre * :%s/\s\+$//e
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 0

" 1. split to tiled windows
nmap <silent> <C-L>  <Plug>GoldenViewSplit
"
" 2. quickly switch current window with the main pane
" and toggle back
nmap <silent> <F7>   <Plug>GoldenViewSwitchMain
nmap <silent> <S-F7> <Plug>GoldenViewSwitchToggle

" 3. jump to next and previous window
nmap <silent> <C-J>  <Plug>GoldenViewNext
nmap <silent> <C-K>  <Plug>GoldenViewPrevious

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
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

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

