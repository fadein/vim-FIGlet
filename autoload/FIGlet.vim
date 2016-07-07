" A function to inform the user if there is a problem finding FIGlet
function! FIGlet#FIGletFail(...)
	echoerr 'The "figlet" executable was not found in your $PATH'
endfunction

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
function! FIGlet#FIGFontDemo(...) "{{{
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

" Implements command-line completion for the :FIGlet command
let s:completionFonts = ''
function! FIGlet#FIGletComplete(arglead, cmdline, cursorpos) "{{{
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
function! FIGlet#FIGRange(...) range "{{{
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

	call s:FIGAppend(pos, figletText)
endfunction "}}}

" The guts of appending FIGlet text into the buffer.
function! s:FIGAppend(pos, figletText) "{{{
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

" The guts of the g@ operator -  delete the text specified by the motion
" & replace it with the result of calling figlet
function! FIGlet#FIGOper(motionType) "{{{
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

	call s:FIGAppend(pos, figletText)
endfunction "}}}

echomsg "Hello from autoload/FIGlet.vim"
