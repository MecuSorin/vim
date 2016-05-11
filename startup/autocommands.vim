" Sets the numbers settings to change between modes
set rnu
    au InsertEnter * :set nu
    au InsertLeave * :set rnu
    au FocusLost * :set nu
    au FocusGained * :set rnu

"Save on focus lost
au FocusLost * :wa

autocmd FileType c,cpp,typescript,java,cs,javascript,php,ps1,go autocmd BufWritePre <buffer> :%retab!
autocmd FileType c,cpp,typescript,java,cs,javascript,php,ps1,go autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufNewFile,BufFilePre,BufRead *.md,*.txt set filetype=markdown.pandoc

"autocmd BufEnter *.ts cd C:\Work\BlueClient
"autocmd BufLeave *.ts cd C:\Work