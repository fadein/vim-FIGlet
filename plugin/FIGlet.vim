" vim:ft=vim foldmethod=marker tw=78:

" ==========================================================================
" File:         FIGlet.vim (global plugin)
" Last Changed: 2015-09-11
" Maintainer:   Erik Falor <ewfalor@gmail.com>
" Version:      3.0
" License:      Vim License
" Source:       http://www.vim.org/scripts/script.php?script_id=3359
"               https://github.com/fadein/FIGlet
" ==========================================================================

"  _____ ___ ____ _      _        _  __        
" |  ___|_ _/ ___| | ___| |_     (_)/ _|_   _  
" | |_   | | |  _| |/ _ \ __|____| | |_| | | | 
" |  _|  | | |_| | |  __/ ||_____| |  _| |_| | 
" |_|   |___\____|_|\___|\__|    |_|_|  \__, | 
"                                       |___/  
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
"      ______________________________    _____ 
" ________  ____/___  _/_  ____/__  /______  /_
" ___(_)_  /_    __  / _  / __ __  /_  _ \  __/
" ___  _  __/   __/ /  / /_/ / _  / /  __/ /_  
" _(_) /_/      /___/  \____/  /_/  \___/\__/  
"                                              
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
" 
"
" ****************************************************************************
"
" I cannot thank Suraj N. Kurapati enough for submitting a patch that sets the
" '[ and '] marks around the FIGlet-ified text. Thank you for your great work.
" If it weren't for you there wouldn't be a version 3.0!
"
" ****************************************************************************
" 
" This plugin requires that the fully awesome program `figlet' be installed on
" your system. http://www.figlet.org/
"
" If you're on Windows, hope is not lost.  There is a figlet port for MS-DOS
" here: ftp://ftp.figlet.org/pub/figlet/program/ms-dos/figdos22.zip.
" Be sure to specify the font directory in your _vimrc through the
" g:filgetOpts variable.
"
" FIGlet for MS-DOS is an old program, so you should make sure that your font
" files conform to FAT-16 style 8.3 filenames, and don't use fancy paths with
" spaces:
"
" let g:figletFontDir = 'C:\PROGRA~1\FIGLET\FONTS'

"     _ ,                                         
"   ,- -               ,                          
"  _||_          _    ||                          
" ' ||    _-_   < \, =||= \\ \\ ,._-_  _-_   _-_,  <>
"   ||   || \\  /-||  ||  || ||  ||   || \\ ||_.     
"   |,   ||/   (( ||  ||  || ||  ||   ||/    ~ ||    
" _-/    \\,/   \/\\  \\, \\/\\  \\,  \\,/  ,-_-   <>
                                                     
"1.	If figlet fails to run, your original text is put back w/o messing up your
"	undo history too much (you can still redo to the oopsie).

"2.	:FIGlet command can accept a range, and does completion.  Hit tab after
"	typing the -f switch to list available fonts.
"	Get a lot of fonts at http://www.figlet.org/fontdb.cgi
"
"	Ex. Render lines 1 through 7 in the tengwar font:
"	:1,7FIGlet -f tengwar
"

"3.	Width is inferred from your 'textwidth' (except on Windows with the DOS
"	build of figlet, as noted above).

"4.	The :FIGletFontDemo command will show you a sample of each font installed
"	in your font directory.  By default this command will render each font
"	eponymously, or you may specify a snippet of text to render so as to allow
"	comparison between fonts.
"
"	Ex. See what the word "Supercalifragilisticexpialidocious" looks like in each font:
"	:FIGletFontDemo Supercalifragilisticexpialidocious

"5.	The g@ operator takes all of the chosen text (selected with motion
"	commands or text-objects) and puts it all into the same paragraph.
"	the :FIGlet command works one line at a time.  It makes a difference
"	when rendering text like this:
"
"1.
"2.
"
"	:FIGlet outputs:
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

" :FIGlet takes the same arguments that the program figlet accepts.  It does a
" little bit of parsing for arguments it can grok, and passes the rest through.
" If no arguments are given, it will fall back to the global parameters you can
" set in your .vimrc, or the defaults.  That usually means the 'standard' font
" and a width of 76 columns.
"
" g@, on the other hand, doesn't take arguments.  You can only control it
" through the globals:
"
" g:figletFont - the name of the font to use
" g:figletFontDir  - full path to the directory storing your figlet fonts
" g:figletOpts - the other arguments you want to pass figlet


" 8""""8                         8""""8                                 
" 8    8   eeee eeeee e  eeeee   8      eeee eeeee  e  eeeee eeeee      
" 8eeee8ee 8    8   8 8  8   8   8eeeee 8  8 8   8  8  8   8   8        
" 88     8 8eee 8e    8e 8e  8       88 8e   8eee8e 8e 8eee8   8e  88   
" 88     8 88   88 "8 88 88  8   e   88 88   88   8 88 88      88       
" 88eeeee8 88ee 88ee8 88 88  8   8eee88 88e8 88   8 88 88      88  88   
"
"eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee 
"eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee eeeee 


" Exit quickly when the script has already been loaded
if exists('g:loaded_FIGlet')
    finish
endif

let g:loaded_FIGlet = '3.0'


" A function to inform the user if there is a problem finding FIGlet
function! FIGletFail(...)
	echoerr 'figlet executable is not found in your $PATH'
endfunction


" Check to see if there is a figlet program in the path
if !executable('figlet')
	set operatorfunc=FIGletFail
	command! -range -nargs=* FIGlet :call FIGletFail(<f-args>)
	finish
endif


" Work around some bugs with the DOS build of figlet.exe
" {{{
if has('dos16') || has('dos32') || has('win16') || has ('win32') ||
			\has('win64') || has('win95')
	"Passing -w causes a stack overflow in figlet.exe about 50% of the time
	let s:overrideWidth = 1
	"using -- to separate options from text crashes figlet about 50% of the
	"time as well.
	let s:argsep = ''
else
	let s:argsep = '--'
endif "}}}


" Run the FIGlet program, passing in the applicable options
function! <SID>RunFIGlet(text, opts, width, font, fontdir) "{{{
	" set any custom options (such as path to fonts)
	if '' != a:opts
		let opts = a:opts
	elseif exists('g:figletOpts')
		let opts = g:figletOpts
	else
		let opts = ''
	endif
	
	" set the width to &textwidth or default
	if exists('s:overrideWidth') 
		let width = ''
	elseif '' != a:width
		let width = '-w ' . a:width
	elseif &textwidth != 0
		let width = '-w ' . &textwidth
	else
		let width = '-w 76'
	endif
	
	" set the font (figlet itself defaults to 'standard')
	if '' != a:font
		let font = '-f ' . a:font
	elseif exists('g:figletFont')
		let font = '-f ' . g:figletFont
	else
		let font = ''
	endif
	
	" set the font (figlet itself defaults to 'standard')
	if '' != a:fontdir
		let fontdir = '-d ' . a:fontdir
	elseif exists('g:figletFontDir')
		let fontdir = '-d ' . g:figletFontDir
	else
		let fontdir = ''
	endif
	
	let command = printf('figlet %s %s %s %s %s %s',
				\opts, width, font, fontdir, s:argsep, shellescape(a:text))
	
	try
		let result = system(command)
	catch /^Vim\%((\a\+)\)\=:E484/   " Can't open file [tempfile]
		throw 'figlet error'
	endtry
	
	if 0 != v:shell_error
		throw 'figlet error'
	endif
	return split(result, "\n")
endfunction "}}}


" Return the font directory to be used by FIGlet - it's either the value of
" g:figletFontDir, or the one compiled-in to FIGlet itself
let s:figletFontDir = ''
function! s:GetFIGletFontDir() "{{{
	if exists('g:figletFontDir')
		let s:figletFontDir  = g:figletFontDir
	else
		let s:figletFontDir = split(system('figlet -I2'), "\n")[0]
	endif
	return s:figletFontDir 
endfunction "}}} 


" Return a list of names of all font files in FIGlet's font directory
let s:figletFonts = []
function! s:GetFIGletFonts() "{{{
	if [] == s:figletFonts 
		let fontDir = s:GetFIGletFontDir()
		let fonts = split(glob(fontDir . '/*.flf'), "\n")
		"strip fontDir and ext from each entry
		let s:figletFonts = map(fonts, 'fnamemodify(v:val, ":t:r")')
	endif
	return s:figletFonts
endfunction "}}}


" For each font found in FIGlet's font directory, generate a small sample
" & show the results in a new scratch buffer.  If this buffer hasn't been
" wiped out, subsequent invocations will reload the buffer instead of
" re-generating it
function! FigFontDemo(...) "{{{
	let bufname = 'FIGletFontDemo.txt'
    let bufnum = bufnr(bufname) 
    let vwinnum = bufwinnr(bufnum)
    if bufnum >= 0 && vwinnum < 0
        " the buffer already exists && window not open
        try
            if winnr("$") == 1 && bufname("%") == '' && &modified == 0
                execute 'buffer ' . bufnum
            else
                execute 'sbuffer ' . bufnum
            endif
        catch /^Vim\%((\a\+)\)\=:E36/   " Not enough room
            " Can't split, then switch
            execute 'buffer ' . bufnum
        endtry
    elseif bufnum >= 0 && vwinnum >= 0    
        " else if buffer exists in a window
        "  switch to the window
        if vwinnum != bufwinnr('%')
          execute "normal \<c-w>" . vwinnum . 'w'
        endif
    else
        " else if no buffer, create it
        try 
            if winnr("$") == 1 && bufname("%") == '' && &modified == 0
                execute 'edit ' . bufname
            else
                execute 'split ' . bufname
            endif
        catch /^Vim\%((\a\+)\)\=:E36/   " Not enough room
            "Can't split, then switch
            execute 'edit ' . bufname
        endtry
		
        "set up buffer-local settings for this window
        setlocal bufhidden=hide foldcolumn=0 nofoldenable 
                    \nonumber norightleft noswapfile nowrap
		
        "arrange to have these settings restored upon re-entering the buffer
        autocmd BufEnter <buffer> setlocal noswapfile 
                    \bufhidden=hide nonumber nowrap norightleft 
                    \foldcolumn=0 nofoldenable
		
		"now that the buffer is set-up
		0put =printf('All FIGlet fonts in %s:', s:GetFIGletFontDir())
		put =''
		for font in s:GetFIGletFonts()
			try
				echon printf("Demoing font %s...\r", font)
				put =font
				put ='==========================='
				if a:0 == 1 && len(a:1) > 0
					silent put =<SID>RunFIGlet(a:1, '', '', font, '')
				else
					silent put =<SID>RunFIGlet(font, '', '', font, '')
				endif
			catch /figlet error/
				put =printf('FIGlet failed on font %s', font)
			finally
				put =''
			endtry
		endfor
		echon "Done"
	
    endif
	setlocal nomodifiable nomodified nofoldenable
	1
endfunction "}}}

command! -nargs=? FIGletFontDemo :call FigFontDemo(<f-args>)


" Implements command-line completion for the :FIGlet command
let s:completionFonts = ''
function! FIGletComplete(arglead, cmdline, cursorpos) "{{{
	if -1 < strridx(a:cmdline, '-f', a:cursorpos) &&
				\strridx(a:cmdline, '-f', a:cursorpos) == strridx(a:cmdline, '-', a:cursorpos)
		"get a listing of *.flf files in s:figletFontDir
		if '' == s:completionFonts
			let s:completionFonts = join(s:GetFIGletFonts(), "\n")
		endif
		return s:completionFonts
	else
		return "-f\n-d\n-p\n-n\n-s\n-S\n-k\n-W\n-o\n-c\n-l\n-r\n-x\n-L\n-R\n-X\n"
	endif
endfunction "}}} 


" The guts of the :FIGlet command - runs figlet over a range of lines
function! FigRange(...) range "{{{
	"figure out the arguments
	let i = 0
	let opts = ''
	let width = ''
	let font = ''
	let fontdir = ''
	while i < len(a:000)
		if '-w' == a:000[i]
			let width = a:000[i+1]
			let i += 2
		elseif '-f' == a:000[i]
			let font = a:000[i+1]
			let i += 2
		elseif '-d' == a:000[i]
			let fontdir = a:000[i+1]
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
			call extend(figletText, <SID>RunFIGlet(line, opts, width, font, fontdir))
		endfor
	catch /figlet error/
		undo
		echoerr "FIGlet failed to render this text"
	endtry

	call FigAppend(pos, figletText)
endfunction "}}}

command! -range -complete=custom,FIGletComplete -nargs=* FIGlet :<line1>,<line2>call FigRange(<f-args>)


" The guts of the g@ operator -  delete the text specified by the motion
" & replace it with the result of calling figlet
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
	
	" call RunFIGlet() using defaults or global options
	try
		let figletText = <SID>RunFIGlet(text, '', '', '', '')
	catch /figlet error/
		undo
		echoerr "FIGlet failed to render this text"
	endtry

	call FigAppend(pos, figletText)
endfunction "}}}

set operatorfunc=FigOper


" The guts of appending FIGlet text into the buffer.
function! FigAppend(pos, figletText) "{{{
	" undo the FIGlet text replacement in one move instead of two
	undojoin

	" append() adds text below the cursor line
	" so we need to rewind the line by one
	call append(a:pos[1] - 1, a:figletText)

	" mark appended FIGlet text boundaries with `[ and `] markers
	call setpos("'[", [0, a:pos[1], 0, 0])
	call setpos("']", [0, a:pos[1] + (len(a:figletText) - 1), 0, 0])

	" restore cursor position
	call setpos('.', a:pos)
endfunction "}}}

" 8""""                            8""""                 
" 8     eeeee eeeee   eeeee eeee   8     e  e     eeee   
" 8eeee 8   8 8   8   8  88 8      8eeee 8  8     8      
" 88    8e  8 8e  8   8   8 8eee   88    8e 8e    8eee   
" 88    88  8 88  8   8   8 88     88    88 88    88     
" 88eee 88  8 88ee8   8eee8 88     88    88 88eee 88ee   

"   _   _   _   _   _   _   _   _     _   _   _   _  
"  / \ / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ 
" ( C | o | p | y | l | e | f | t ) ( 2 | 0 | 1 | 5 )
"  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 

