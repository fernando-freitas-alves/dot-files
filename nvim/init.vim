execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
imap <A-BS> <C-W>
set mouse=a
command! -nargs=0 Sw w !sudo tee % > /dev/null
