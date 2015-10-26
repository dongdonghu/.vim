map <F3> <ESC>:wq<CR>
map <F2> <ESC>:q!<CR>
map <F4> <ESC>:qa!<CR>
map cp <ESC>:r !pwd<CR>kJx$
"set guifont=Courier\ New\ 16
set backup
set backupext=.bak
set autoread

" For vundle
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos

Bundle 'genutils'
Bundle 'surround.vim'    
" vwS",ds“.cs"'
"Bundle 'EasyMotion'
Bundle 'AutoComplPop'
Bundle 'grep.vim'
"Bundle 'taglist.vim'
Bundle 'The-NERD-Commenter'
Bundle 'csv.vim'
"Bundle 'vim-multiple-cursors'
"Bundle 'SuperTab-continued'
"Bundle 'minibufexplorerpp'

	
"Bundle 'bash-support.vim'
"Bundle 'perl-support.vim'
filetype plugin indent on 

let g:EasyMotion_leader_key = '<Leader>'

set showcmd
"test
"b.... .....tab ..shift+tab 
"{{{
"ctrl + c ........
function! Smart_TabComplete()
  let line = getline('.')                    " curline
  let substr = strpart(line, -1, col('.')+1) " from start to cursor
  let substr = matchstr(substr, "[^ \t]*$")  " word till cursor
  if (strlen(substr)==0)                     " nothing to match on empty string
     return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1 " position of period, if any
  let has_slash = match(substr, '\/') != -1  " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                    " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                    " file matching
  else
    return "\<C-X>\<C-O>"                    " plugin matching
  endif
endfunction
"inoremap <tab> <c-r>=Smart_TabComplete()<CR>
"}}}
"tab.... .....tab ..shift+tab 


colorscheme darkblue
set hlsearch
set nu
set ic
