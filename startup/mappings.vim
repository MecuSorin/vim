:imap jk <Esc>
:nmap <Space> i
:nmap <Tab>	i<Tab>
:nmap <Enter> i<Enter>

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

" Sets the commands like ci; or ya.
for mnemonic in  [ ".", ";"]
	for command in [ "y", "d", "c", "v" ]
		exe "nnoremap ".command."i".mnemonic." T".mnemonic.command."t".mnemonic
		exe "nnoremap ".command."a".mnemonic." F".mnemonic.command."f".mnemonic
	endfor
endfor

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Quit and save
nnoremap <leader>z	:wq!<cr>
nnoremap <leader>q	:q!<cr>
nnoremap <leader>w	:w<cr>
nnoremap <leader>z	:wq!<cr>
" Buffers
nnoremap <leader>p	"*p
nnoremap <leader>P	"*P
vnoremap <leader>c	"*y
vnoremap <leader>x	"*x
" Tabs
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
noremap <F7> :set expandtab!<CR>
nmap <Leader>h :tabnew %:h<CR>
" Golang specific
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)


