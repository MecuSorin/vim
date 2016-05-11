set DropBoxDir=d:\Users\Sorin\Dropbox\Dots\HM
set HomeDir=c:\Users\Sorin
set ConEmuDir=d:\Utils\ConEmu
set PowerShellStartDir=d:\Users\Sorin\Documents\WindowsPowerShell

rem copy %ConEmuDir%\ConEmu.xml %DropBoxDir%\ConEmu.xml
rem rm %ConEmuDir%\ConEmu.xml 
rem mklink %ConEmuDir%\ConEmu.xml  %DropBoxDir%\ConEmu.xml

copy %HomeDir%\.gitignore %DropBoxDir%\.gitignore 
rm %HomeDir%\.gitignore 
mklink %HomeDir%\.gitignore %DropBoxDir%\.gitignore

copy %HomeDir%\.gitconfig %DropBoxDir%\.gitconfig
rm %HomeDir%\.gitconfig 
mklink %HomeDir%\.gitconfig %DropBoxDir%\.gitconfig

copy %HomeDir%\_vimrc %DropBoxDir%\_vimrc
rm %HomeDir%\_vimrc 
mklink %HomeDir%\_vimrc %DropBoxDir%\_vimrc

copy %HomeDir%\.vsvimrc %DropBoxDir%\.vsvimrc
rm %HomeDir%\.vsvimrc 
mklink %HomeDir%\.vsvimrc %DropBoxDir%\.vsvimrc

mklink /D %HomeDir%\vimfiles\startup %DropBoxDir%\startup
mklink /D %HomeDir%\vimfiles\colors %DropBoxDir%\colors
mklink /D %PowerShellStartDir% %DropBoxDir%\WindowsPowerShell
