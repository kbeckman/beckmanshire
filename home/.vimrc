call pathogen#infect()

syntax on

filetype plugin indent on

"http://stackoverflow.com/questions/18419923/macbook-pro-15-backspace-not-working-with-vim
set nocompatible
set backspace=indent,eol,start

set list
exec "set listchars=tab:▸.,trail:\uB7,nbsp:~"
highlight NonText guifg=#ffffff
highlight SpecialKey guifg=#ffffff

colorscheme rubymine
highlight ColorColumn ctermbg=magenta guibg=magenta
call matchadd('ColorColumn', '\%120v', 100)

set number


setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
if has ('autocmd')
  autocmd FileType elixir     setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType go         setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType html       setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType json       setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType markdown   setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType rake       setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType ruby       setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType sh         setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType vim        setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType yaml       setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
endif

" Disable 'Q' / diable Vim Ex mode...
noremap Q <nop>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val,"name")')
endfunc
