echo off
set /p title=Enter title for new post: 
hugo.exe new content blog/"%title%"-"IWillUseUnixSoNoNeedFor".md
pause