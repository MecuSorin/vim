" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

"Sort visual selected rows
vnoremap <leader>s :sort<CR>

"Easier identation for visual selection
vnoremap < <gv
vnoremap > >gv

" Insert/delete quotes arround word
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" Surround word with () {} []
:nnoremap <Leader>q( ciw()<Esc>P
:nnoremap <Leader>q{ ciw{}<Esc>P
:nnoremap <Leader>q[ ciw[]<Esc>P


" Hard learning the basic movement keys, then i will remove them too to better
" grasp t,T,f,F
:imap <Up> <Esc>
:imap <Down> <Esc>
:imap <Left> <Esc>
:imap <Right> <Esc>
:nmap <Up> <Esc>
:nmap <Down> <Esc>
:nmap <Left> <Esc>
:nmap <Right> <Esc>