" vim:ft=vim foldmethod=marker tw=78:
" ==========================================================================
" File:         Figlet.vim (global plugin)
" Last Changed: 2010-12-10
" Maintainer:   Erik Falor <ewfalor@gmail.com>
" Version:      1.0
" License:      Vim License
" ==========================================================================

"  _____ _       _      _        _  __        
" |  ___(_) __ _| | ___| |_     (_)/ _|_   _  
" | |_  | |/ _` | |/ _ \ __|____| | |_| | | | 
" |  _| | | (_| | |  __/ ||_____| |  _| |_| | 
" |_|   |_|\__, |_|\___|\__|    |_|_|  \__, | 
"          |___/                       |___/  
"                ,        ,           , .     , .       
"   . _ . .._.  -+- _ \./-+-  .    ,*-+-|_   -+-|_  _   
" \_|(_)(_|[     | (/,/'\ |    \/\/ | | [ )   | [ )(/,  
" ._|                                                   
"                          @@@@@@@@@          
"                        @@:::::::::@@        
"                      @@:::::::::::::@@      
"    ggggggggg   ggggg@:::::::@@@:::::::@     
"   g:::::::::ggg::::g@::::::@   @::::::@     
"  g:::::::::::::::::g@:::::@  @@@@:::::@     
" g::::::ggggg::::::gg@:::::@  @::::::::@     
" g:::::g     g:::::g @:::::@  @::::::::@     
" g:::::g     g:::::g @:::::@  @:::::::@@     
" g:::::g     g:::::g @:::::@  @@@@@@@@       
" g::::::g    g:::::g @::::::@                
" g:::::::ggggg:::::g @:::::::@@@@@@@@        
"  g::::::::::::::::g  @@:::::::::::::@       
"   gg::::::::::::::g    @@:::::::::::@       
"     gggggggg::::::g      @@@@@@@@@@@        
"             g:::::g                         
" gggggg      g:::::g                         
" g:::::gg   gg:::::g                         
"  g::::::ggg:::::::g                         
"   gg:::::::::::::g                          
"     ggg::::::ggg                            
"        gggggg                               
"
"                               .-.             
"                              .' `.            
"  .--. .---.  .--. .--.  .--. `. .'.--. .--.   
" ' .; :: .; `' '_.': ..'' .; ; : :' .; :: ..'  
" `.__.': ._.'`.__.':_;  `.__,_;:_;`.__.':_;    
"       : :                                     
"       :_;                                     
"
" o                  |    |o|    o              |             |    |         
" .,---.    ,---.,---|,---|.|--- .,---.,---.    |--- ,---.    |--- |---.,---.
" ||   |    ,---||   ||   |||    ||   ||   |    |    |   |    |    |   ||---'
" ``   '    `---^`---'`---'``---'``---'`   '    `---'`---'    `---'`   '`---'
"
"      ______________        ______    _____ 
" ________  ____/__(_)______ ___  /______  /_
" ___(_)_  /_   __  /__  __ `/_  /_  _ \  __/
" ___  _  __/   _  / _  /_/ /_  / /  __/ /_  
" _(_) /_/      /_/  _\__, / /_/  \___/\__/  
"                    /____/                  
"                                                                 888 
"  e88'888  e88 88e  888 888 8e  888 888 8e   ,"Y88b 888 8e   e88 888 
" d888  '8 d888 888b 888 888 88b 888 888 88b "8" 888 888 88b d888 888 
" Y888   , Y888 888P 888 888 888 888 888 888 ,ee 888 888 888 Y888 888 
"  "88,e8'  "88 88"  888 888 888 888 888 888 "88 888 888 888  "88 888 
" 
" 
"                                   .-._.).--.            
"                       `-=-.`-=-. (   )/      `-=-.`-=-. 
"                                   `-'/                  
"
"                (o)__(o)\\  //                wWw  wWw\\\  ///,
"                (__  __)(o)(o)  wWw     wWw   (O)  (O)((O)(O)) 
"                  (  )  ||  ||  (O)_    (O)_  / )  ( \ | \ ||  
"                   )(   |(__)| .' __)  .' __)/ /    \ \||\\||  
"                  (  )  /.--.\(  _)   (  _)  | \____/ ||| \ |  
"                   )/  -'    `-`.__)   )/    '. `--' .`||  ||  
"                  (                   (        `-..-' (_/  \_) 
"           ___  ___  ___  ____   ________ __  __   __    __ ___ _  _
"           ||\\//|| // \\ || \\ ||   || \\||\ ||   ||    ||// \\\\//
"           || \/ ||((   ))||  ))||== ||_//||\\||   \\ /\ //||=|| )/ 
"           ||    || \\_// ||_// ||___|| \\|| \||    \V/\V/ || ||//  
"                          _                     _        
"                        _| |_ ___  ._ _ _  ___ | |__ ___ 
"                         | | / . \ | ' ' |<_> || / // ._>
"                         |_| \___/ |_|_|_|<___||_\_\\___.
"                                                            
"                        _    _                _              _ 
"                   ___ | | _| | ___  ___ ___ | |_  ___  ___ | |
"                  / . \| |/ . ||___|<_-</ | '| . |/ . \/ . \| |
"                  \___/|_|\___|     /__/\_|_.|_|_|\___/\___/|_|
"                                                               
"               _                                       _            
"              (_)                                     (_)           
"            _ (_) _  _    _  _  _  _   _         _  _ (_) _  _      
"           (_)(_)(_)(_)  (_)(_)(_)(_)_(_) _   _ (_)(_)(_)(_)(_)     
"              (_)       (_) _  _  _ (_)  (_)_(_)      (_)           
"              (_)     _ (_)(_)(_)(_)(_)   _(_)_       (_)     _     
"              (_)_  _(_)(_)_  _  _  _  _ (_) (_) _    (_)_  _(_)    
"                (_)(_)    (_)(_)(_)(_)(_)       (_)     (_)(_)      
"                                                                    
"                                                                    
"                _  _   _     _  _                                    
"              _(_)(_) (_)   (_)(_)                                   
"           _ (_) _  _  _       (_)    _  _  _  _      _  _  _  _     
"          (_)(_)(_)(_)(_)      (_)   (_)(_)(_)(_)_  _(_)(_)(_)(_)    
"             (_)      (_)      (_)  (_) _  _  _ (_)(_)_  _  _  _     
"             (_)      (_)      (_)  (_)(_)(_)(_)(_)  (_)(_)(_)(_)_   
"             (_)    _ (_) _  _ (_) _(_)_  _  _  _     _  _  _  _(_)  
"             (_)   (_)(_)(_)(_)(_)(_) (_)(_)(_)(_)   (_)(_)(_)(_)    
" 
"
" ___  _   _     ____ ____ _ _  _    ____ ____ _    ____ ____    
" |__]  \_/  .   |___ |__/ | |_/     |___ |__| |    |  | |__/    
" |__]   |   .   |___ |  \ | | \_    |    |  | |___ |__| |  \    


" This plugin requires that the fully awesome figlet be installed on your
" system.
"
" If you're on Windows, hope is not lost.  There is a figlet port for MS-DOS
" here: ftp://ftp.figlet.org/pub/figlet/program/ms-dos/figdos22.zip Be sure
" to specify the font directory in your _vimrc through the g:filgetOpts
" variable.  Figlet for MS-DOS is an old program, so no fancy paths with
" spaces:
"
" let g:figletOpts = '-d C:\PROGRA~1\FIGLET\FONTS'

"     _ ,                                         
"   ,- -               ,                          
"  _||_          _    ||                          
" ' ||    _-_   < \, =||= \\ \\ ,._-_  _-_   _-_, 
"   ||   || \\  /-||  ||  || ||  ||   || \\ ||_.  
"   |,   ||/   (( ||  ||  || ||  ||   ||/    ~ || 
" _-/    \\,/   \/\\  \\, \\/\\  \\,  \\,/  ,-_-  

"1.	If figlet fails to run, your original text is put back w/o messing up your
"	undo history too much (you can still redo to the oopsie)

"2.	:Figlet command can accept a range, and does completion.  Hit tab after
"	typing the -f switch to list available fonts.
"	Get a lot of fonts at http://www.figlet.org/fontdb.cgi

"3.	Width is inferred from your 'textwidth'

"4.	The g@ operator takes all of the chosen text (selected with motion
"	commands or text-objects) and puts it all into the same paragraph.
"	the :Figlet command works one line at a time.  It's makes a difference
"	when rendering text like this:
"
"1.
"2.
"
"	:Figlet outputs:
"  _    
" / |   
" | |   
" | |_  
" |_(_) 
"       
"  ____     
" |___ \    
"   __) |   
"  / __/ _  
" |_____(_) 
"           
"	g@ instead outputs:
"  _     ____     
" / |   |___ \    
" | |     __) |   
" | |_   / __/ _  
" |_(_) |_____(_)
"

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
" :Figlet takes the same arguments that the program figlet accepts.  It does a
" little bit of parsing for arguments it can grok, and passes the rest through.
" If no arguments are given, it will fall back to the global parameters you can
" set in your .vimrc, or the defaults.  That usually means the 'standard' font
" and a width of 76 columns.
"
" g@, on the other hand, doesn't take arguments.  You can only control it
" through the globals:
"
" g:figletFont - the name of the font to use
" g:figletOpts - the other arguments you want to pass figlet

"  ,         |\            
" ||          \\           
"=||=  /'\\  / \\  /'\\ <> 
" ||  || || || || || ||    
" ||  || || || || || ||    
" \\, \\,/   \\/  \\,/  <> 
"
"1.	I haven't tried the -f font name completion on a Wintendo yet, dunno if
"that works.

"2.	If you start vim, then make figlet un-executable, and try to :Figlet some
"	text before creating an undo history, you raise an E790

" 8""""8                         8""""8                                 
" 8    8   eeee eeeee e  eeeee   8      eeee eeeee  e  eeeee eeeee      
" 8eeee8ee 8    8   8 8  8   8   8eeeee 8  8 8   8  8  8   8   8        
" 88     8 8eee 8e    8e 8e  8       88 8e   8eee8e 8e 8eee8   8e  88   
" 88     8 88   88 "8 88 88  8   e   88 88   88   8 88 88      88       
" 88eeeee8 88ee 88ee8 88 88  8   8eee88 88e8 88   8 88 88      88  88   
"
"eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee 
"eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee 


" Exit quickly when the script has already been loaded or when 'compatible'
" is set.

if exists('g:loaded_Figlet')
    finish
endif
"autocmd! BufWritePost Figlet.vim nested source %

let g:loaded_Figlet = '1.0'

function! FigletFail(...)
	echoerr 'figlet is not installed in your $PATH'
endfunction

"check to see if there is a figlet program in the path
if !executable('figlet')
	set operatorfunc=FigletFail
	command! -range -nargs=* Figlet :call FigletFail(<q-args>)
	finish
endif

function! <SID>RunFiglet(text, opts, width, font) "{{{
	" set any custom options (such as path to fonts)
	if exists('g:figletOpts')
		let opts = g:figletOpts
	elseif '' != a:opts
		let opts = a:opts
	else
		let opts = ''
	endif

	" set the width to &textwidth or default
	if &textwidth != 0
		let width = '-w ' . &textwidth
	elseif '' != a:width
		let width = '-w ' . a:width
	else
		let width = '-w 76'
	endif

	" set the font (figlet itself defaults to 'standard')
	if exists('g:figletFont')
		let font = '-f ' . g:figletFont
	elseif '' != a:font
		let font = '-f ' . a:font
	else
		let font = ''
	endif

	let command = printf("figlet %s %s %s '%s'",
				\opts, width, font, a:text)

	let result = system(command)

	if 0 != v:shell_error
		throw 'figlet error'
	endif
	return split(result, "\n")
endfunction "}}}

function! FigRange(...) range "{{{
	"figure out the arguments
	let i = 0
	let opts = ''
	let width = ''
	let font = ''
	while i < len(a:000)
		if '-w' == a:000[i]
			let width = a:000[i+1]
			let i += 2
		elseif '-f' == a:000[i]
			let font = a:000[i+1]
			let i += 2
		else
			let opts .= a:000[i] . ' '
			let i += 1
		endif
	endwhile

	"set the cursor's position at the begining of the range
	let pos = [0, a:firstline, 0, 0]

	"collect the specified text into a list
	let text = getline(a:firstline, a:lastline)

	"delete the original text
	execute printf("%d,%dd", a:firstline, a:lastline)

	let figletText = []

	"render each line in turn, and accumulate the text
	try
		for line in text
			call extend(figletText, <SID>RunFiglet(line, opts, width, font))
		endfor
	catch /figlet error/
		undo
		undojoin
		return
	endtry

	"undo the Figlet text replacement in one move instead of two
	undojoin

	" the append function appends below the cursor line;
	" so we need to rewind the line by one
	call append(pos[1]  - 1, figletText)

	"restore cursor position
	call setpos('.', pos)
endfunction "}}}

let s:figletFonts = ''
function! FigletComplete(arglead, cmdline, cursorpos) "{{{

	if -1 < strridx(a:cmdline, '-f', a:cursorpos) &&
				\strridx(a:cmdline, '-f', a:cursorpos) == strridx(a:cmdline, '-', a:cursorpos)
		"get a dirlisting of *.flf *.flc files in s:figletFontDir
		if '' == s:figletFonts
			let figletFontDir = split(system('figlet -I2'), "\n")[0]
			let fonts = split(glob(figletFontDir . '/*.fl?'), "\n")
			"strip figletFontDir and ext from each entry
			call map(fonts, 'fnamemodify(v:val, ":t:r")')
			let s:figletFonts = join(fonts, "\n")
		endif
		return s:figletFonts
	else
		return "-f\n-d\n-p\n-n\n-s\n-S\n-k\n-W\n-o\n-c\n-l\n-r\n-x\n-L\n-R\n-X\n"
	endif
endfunction "}}}

command! -range -complete=custom,FigletComplete -nargs=* Figlet :<line1>,<line2>call FigRange(<q-args>)

" delete the text specified by the motion & prepare to call figlet
function! FigOper(motionType) "{{{
	"save the cursor's position
	let pos = getpos('.')

	" save the contents and attributes of the " register
	let saveReg = getreg('"')
	let saveRegType = getregtype('"')

	" delete the specified text into register "
	if a:0  " Invoked from Visual mode, use '< and '> marks.
		silent exe "normal! `<" . a:motionType . "`>x"
	elseif a:motionType == 'line'
		silent exe "normal! '[V']x"
	elseif a:motionType == 'block'
		silent exe "normal! `[\<C-V>`]x"
	else
		silent exe "normal! `[v`]lx"
	endif

	" restore register "
	let text = substitute(@", '\_s\+', ' ', 'g')

	call setreg('"', saveReg, saveRegType)

	" call RunFiglet() using defaults or global options
	try
		let figletText = <SID>RunFiglet(text, '', '', '')
	catch /figlet error/
		undo
		undojoin
		return
	endtry

	"undo the Figlet text replacement in one move instead of two
	undojoin

	" the append function appends below the cursor line;
	" so we need to rewind the line by one
	call append(pos[1]  - 1, figletText)

	"restore cursor position
	call setpos('.', pos)
endfunction "}}}

set operatorfunc=FigOper

" 8""""                            8""""                 
" 8     eeeee eeeee   eeeee eeee   8     e  e     eeee   
" 8eeee 8   8 8   8   8  88 8      8eeee 8  8     8      
" 88    8e  8 8e  8   8   8 8eee   88    8e 8e    8eee   
" 88    88  8 88  8   8   8 88     88    88 88    88     
" 88eee 88  8 88ee8   8eee8 88     88    88 88eee 88ee   

"   _   _   _   _   _   _   _   _     _   _   _   _  
"  / \ / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ 
" ( C | o | p | y | l | e | f | t ) ( 2 | 0 | 1 | 0 )
"  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 

"
