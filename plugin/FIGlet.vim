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
"
"     _ ,                                         
"   ,- -               ,                          
"  _||_          _    ||                          
" ' ||    _-_   < \, =||= \\ \\ ,._-_  _-_   _-_,  <>
"   ||   || \\  /-||  ||  || ||  ||   || \\ ||_.     
"   |,   ||/   (( ||  ||  || ||  ||   ||/    ~ ||    
" _-/    \\,/   \/\\  \\, \\/\\  \\,  \\,/  ,-_-   <>
"
"1.	If figlet fails to run, your original text is put back w/o messing up your
"	undo history too much (you can still redo to the oopsie).
"
"2.	:FIGlet command accepts a range, of lines and has completion. Hit tab
"   after typing the -f switch to list available fonts.
"	Get a lot of fonts at http://www.figlet.org/fontdb.cgi
"
"	Ex. Render lines 1 through 7 in the tengwar font:
"	:1,7FIGlet -f tengwar
"
"	Ex. Render the visual selection in the doom font, centered in 90 columns:
"	'<,'>FIGlet -w 90 -c -f doom
"
"3.	Width is inferred from your 'textwidth' (except on Windows with the DOS
"	build of figlet, as noted above).
"
"4.	The :FIGletFontDemo command will show you a sample of each font installed
"	in your font directory.  By default this command will render each font
"	eponymously, or you may specify a snippet of text to render so as to allow
"	comparison between fonts.
"
"	Ex. See what the word "Supercalifragilisticexpialidocious" looks like in each font:
"	:FIGletFontDemo Supercalifragilisticexpialidocious
"
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

" 8""""                            8""""                 
" 8     eeeee eeeee   eeeee eeee   8     e  e     eeee   
" 8eeee 8   8 8   8   8  88 8      8eeee 8  8     8      
" 88    8e  8 8e  8   8   8 8eee   88    8e 8e    8eee   
" 88    88  8 88  8   8   8 88     88    88 88    88     
" 88eee 88  8 88ee8   8eee8 88     88    88 88eee 88ee   

"   _   _   _   _   _   _   _   _     _   _   _   _  
"  / \ / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ 
" ( C | o | p | y | l | e | f | t ) ( 2 | 0 | 1 | 6 )
"  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 

