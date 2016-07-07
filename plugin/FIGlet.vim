" vim:ft=vim foldmethod=marker tw=78:

" ==========================================================================
" File:         FIGlet.vim (global plugin)
" Last Changed: 2016-07-07
" Maintainer:   Erik Falor <ewfalor@gmail.com>
" Version:      3.1
" License:      Vim License
" Source:		http://www.vim.org/scripts/script.php?script_id=3359
" GitHub:       https://github.com/fadein/vim-FIGlet.git
" ==========================================================================

"  _ _    _ ,                            
" - - /  - -                             
"   ('||  ||          _     _            
"  (( ||--||   _-_,  < \,  / \\  _-_  <> 
"  (( ||--||  ||_.   /-|| || || || \\    
"  (( /   ||   ~ || (( || || || ||/      
"    -___-\\, ,-_-   \/\\ \\_-| \\,/  <> 
"                          /  \          
"                         '----`         
"
" :FIGlet takes the same arguments that the program figlet(1) accepts.  It
" does a little bit of parsing for arguments it can grok, and passes the rest
" through.  If no arguments are given, it will fall back to the global
" parameters you can set in your vimrc file, or the program's own defaults.
" That usually means the 'standard' font and a width of 76 columns.
"
" When the global variable g:use_FIGlet_as_operatorfunc is defined and has a
" true value, the 'operatorfunc' setting will be set such that the g@ command
" will filter the indicated text through figlet(1).  g@, being a normal mode
" command, cannot take arguments and may be controlled through these global
" variables:
"
"   g:figletFont - the name of the font to use
"   g:figletFontDir  - full path to the directory storing your figlet fonts
"   g:figletOpts - any other arguments you want to pass figlet(1)
"
" :FIGletFontDemo generates a sample of every font on your system.

"   _   _   _   _   _   _   _   _     _   _   _   _  
"  / \ / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ 
" ( C | o | p | y | l | e | f | t ) ( 2 | 0 | 1 | 6 )
"  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 

" Exit quickly when the script has already been loaded
if exists('g:loaded_FIGlet')
    finish
endif

let g:loaded_FIGlet = '3.1'


" Check whether there is a figlet(1) program in the path
if !executable('figlet')
	if exists('g:use_FIGlet_as_operatorfunc') && g:use_FIGlet_as_operatorfunc
		set operatorfunc=FIGlet#FIGletFail
	endif
	command! -nargs=? FIGletFontDemo :call FIGlet#FIGletFail(<f-args>)
	command! -range -nargs=* FIGlet  :call FIGlet#FIGletFail(<f-args>)
else
	if exists('g:use_FIGlet_as_operatorfunc') && g:use_FIGlet_as_operatorfunc
		set operatorfunc=FIGlet#FIGOper
	endif
	command! -nargs=? FIGletFontDemo :call FIGlet#FIGFontDemo(<f-args>)
	command! -range -complete=custom,FIGlet#FIGletComplete -nargs=* FIGlet :<line1>,<line2>call FIGlet#FIGRange(<f-args>)
endif

