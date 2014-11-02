" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95

endif
"设置背景色
set bg=dark
"设置窗口透明度
set transparency=15
"显示行号
set number
"使用koehler调色板
""..

"在vi窗口右下角显示未完成的命令
set showcmd

"设置编码
set encoding=utf-8 
set fenc=utf-8 
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5 

"开启自带的tab栏
set showtabline=2

"总是在窗口右下角显示光标的位置
set ruler

"语法高亮
if &t_Co>2 || has("gui_running")
syntax on
endif

"设置字体
set gfn=Courier:h15

"设置自动缩进
set ts=4
set sw=4
set softtabstop=4
set noexpandtab

"设置tab和行尾显示
"set listlcs=tab:>-,trail:-

"搜索设置

set hlsearch

set ignorecase

set incsearch

set wrapscan

filetype plugin on
filetype on

nmap <F2> :NERDTreeToggle<CR>
"配置F2打开NERDTree。
"
"插件界面设置还没弄好，插件刚装好但是没有配置过

let g:winManagerWindowLayout = "TagList|FileExplorer"
let g:winManagerWidth = 30
let g:AutoOpenWinManager = 1

let Tlist_Show_One_File = 1 
let Tlist_Use_Right_Window = 1
"let Tlist_Exit_OnlyWindow = 1


let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'

"设置折叠
set foldenable
set foldmethod=indent

"设置帮助语言
set helplang=cn,en

"设置Tlist
"进行Tlist的设置  
filetype on  
let Tlist_Show_Menu = 1  
"TlistUpdate可以更新tags  
map <F3> :silent! Tlist<CR>  "按下F3就可以呼出Taglist  
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行  
let Tlist_Use_Right_Window=0 "让窗口显示在右边，0的话就是显示在左边  
let Tlist_Show_One_File=1 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1  
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏  
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim  
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理  
"let Tlist_Inc_Winwidth= 

"设置Tab补全python（pydiction）
let g:pydiction_location='~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_heighy = 20

"绑python编译
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"  
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m  
autocmd BufRead *.py nmap <F5> :!python %<CR>  
autocmd BufRead *.py nmap <F6> :make<CR>  
autocmd BufRead *.py copen "如果是py文件，则同时打开编译信息窗口  

"设置个主题
colorscheme desert

set guifont=Menlo:h14
