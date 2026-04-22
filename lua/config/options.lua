local opt = vim.opt

-- stylua: ignore start
-- 1. Interface & UI
opt.background = "dark"       -- "dark" or "light", used for highlight colors
opt.number = true             -- print the line number in front of each line
opt.relativenumber = true     -- show relative line number in front of each line
opt.termguicolors = true      -- enable 24-bit RGB color in the TUI
opt.cursorline = true         -- highlight the screen line of the cursor
opt.signcolumn = "yes"        -- when :and how to display the sign column
opt.laststatus = 3            -- tells when last window has status lines
opt.wrap = false              -- long lines wrap and continue on the next line
opt.breakindent = true		    -- wrapped line repeats indent
opt.showmode = false	        -- message on status line to show current mode
-- 2. Performance & Behaviour
opt.scrolloff = 8             -- minimum nr. of lines above and below cursor
opt.sidescrolloff = 10        -- min. nr. of columns to left and right of cursor
opt.undofile = true           -- save undo information in a file
opt.undolevels = 10000        -- maximum number of changes that can be undone
-- opt.undodir		            -- where to store undo files
opt.updatetime = 200          -- after this many milliseconds flush swap file
opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register
opt.mouse = "a"               -- enable the use of mouse clicks
opt.confirm = true            -- ask what to do about unsaved/read-only files
opt.virtualedit = "block"     -- when to use virtual editing
opt.timeoutlen = 300          -- time out time in milliseconds
-- 3. Tabs & Indentation
opt.expandtab = true          -- use spaces when <Tab> is inserted
opt.shiftwidth = 2            -- number of spaces to use for (auto)indent step
opt.tabstop = 2               -- number of columns between two tab stops
opt.softtabstop = 2           -- number of columns between two soft tab stops
opt.smartindent = true        -- smart autoindenting for C programs
-- 4. Search
opt.ignorecase = true         -- ignore case in search patterns
opt.smartcase = true          -- no ignore case when pattern has uppercase
opt.inccommand = "nosplit"

-- 5. Windows, split
opt.splitbelow = true         -- new window from split is below the current one
opt.splitright = true         -- new window is put right of the current one
-- 6. Disable backup
opt.autowrite = true          -- automatically write file if changed
opt.backup = false            -- keep backup file after overwriting a file
opt.writebackup = false       -- make a backup before overwriting a file
-- stylua: ignore end

-- opt.autochdir		    -- change directory to the file in the current window
-- opt.autocomplete		    -- enable automatic completion in insert mode
-- opt.autocompletedelay	--  delay in msec before menu appears after typing
-- opt.autocompletetimeout	--  initial decay timeout for autocompletion algorithm
-- opt.autoindent		    -- take indent for new line from previous line
-- opt.autoread		        -- autom. read file when changed outside of Vim
-- opt.backspace		    -- how backspace works at start of line
-- opt.backupcopy		    -- make backup as a copy, don't rename the file
-- opt.backupdir		    -- list of directories for the backup file
-- opt.backupext		    -- extension used for the backup file
-- opt.backupskip		    -- no backup for files that match these patterns
-- opt.belloff		        -- do not ring the bell for these reasons
-- opt.binary		        -- read/write/edit file in binary mode
-- opt.bomb		            -- prepend a Byte Order Mark to the file
-- opt.breakat		        -- characters that may cause a line break
-- opt.breakindentopt		-- settings for 'breakindent'
-- opt.browsedir		    -- which directory to start browsing in
-- opt.bufhidden		    -- what to do when buffer is no longer in window
-- opt.buflisted		    -- whether the buffer shows up in the buffer list
-- opt.buftype		        -- special type of buffer
-- opt.casemap		        -- specifies how case of letters is changed
-- opt.cdhome		        -- change directory to the home directory by ":cd"
-- opt.cdpath		        -- list of directories searched with ":cd"
-- opt.cedit		        -- key used to open the command-line window
-- opt.charconvert		    -- expression for character encoding conversion
-- opt.chistory		        -- maximum number of quickfix lists in history
-- opt.cindent		        -- do C program indenting
-- opt.cinkeys		        -- keys that trigger indent when 'cindent' is set
-- opt.cinoptions		    -- how to do indenting when 'cindent' is set
-- opt.cinscopedecls		-- words that are recognized by 'cino-g'
-- opt.cinwords		        -- words where 'si' and 'cin' add an indent
-- opt.cmdheight		    -- number of lines to use for the command-line
-- opt.cmdwinheight		    -- height of the command-line window
-- opt.colorcolumn		    -- columns to highlight
-- opt.columns		        -- number of columns in the display
-- opt.comments		        -- patterns that can start a comment line
-- opt.commentstring		-- template for comments; used for fold marker
-- opt.complete		        -- specify how Insert mode completion works
-- opt.completefunc		    -- function to be used for Insert mode completion
-- opt.completeopt		    -- options for Insert mode completion
-- opt.completeslash		-- like 'shellslash' for completion
-- opt.completetimeout		-- initial decay timeout for CTRL-N and CTRL-P
-- opt.concealcursor		-- whether concealable text is hidden in cursor line
-- opt.conceallevel		    -- whether concealable text is shown or hidden
-- opt.copyindent		    -- make 'autoindent' use existing indent structure
-- opt.cpoptions		    -- flags for Vi-compatible behavior
-- opt.cursorbind		    -- move cursor in window as it moves in other windows
-- opt.cursorcolumn		    -- highlight the screen column of the cursor
-- opt.cursorlineopt		-- settings for 'cursorline'
-- opt.debug		        -- set to "msg" to see all error messages
-- opt.define		        -- pattern to be used to find a macro definition
-- opt.delcombine		    -- delete combining characters on their own
-- opt.dictionary		    -- list of file names used for keyword completion
-- opt.diff		            -- use diff mode for the current window
-- opt.diffanchors		    -- list of {address} to force anchoring of a diff
-- opt.diffexpr		        -- expression used to obtain a diff file
-- opt.diffopt		        -- options for using diff mode
-- opt.digraph		        -- enable the entering of digraphs in Insert mode
-- opt.directory		    -- list of directory names for the swap file
-- opt.display		        -- list of flags for how to display text
-- opt.eadirection		    -- in which direction 'equalalways' works
-- opt.encoding		        -- encoding used internally
-- opt.endoffile		    -- write CTRL-Z at end of the file
-- opt.endofline		    -- write <EOL> for last line in file
-- opt.equalalways		    -- windows are automatically made the same size
-- opt.equalprg		        -- external program to use for "=" command
-- opt.errorbells		    -- ring the bell for error messages
-- opt.errorfile		    -- name of the errorfile for the QuickFix mode
-- opt.errorformat		    -- description of the lines in the error file
-- opt.eventignore		    -- autocommand events that are ignored
-- opt.eventignorewin		-- autocommand events that are ignored in a window
-- opt.exrc		            -- read init files in the current directory
-- opt.fileencoding		    -- file encoding for multibyte text
-- opt.fileencodings		--  automatically detected character encodings
-- opt.fileformat		    -- file format used for file I/O
-- opt.fileformats		    -- automatically detected values for 'fileformat'
-- opt.fileignorecase		-- ignore case when using file names
-- opt.filetype		        -- type of file, used for autocommands
-- opt.fillchars		    -- characters to use for displaying special items
-- opt.findfunc		        -- function to be called for the |:find| command
-- opt.fixendofline		    -- make sure last line in file has <EOL>
-- opt.foldclose		    -- close a fold when the cursor leaves it
-- opt.foldcolumn		    -- width of the column used to indicate folds
-- opt.foldenable		    -- set to display all folds open
-- opt.foldexpr		        -- expression used when 'foldmethod' is "expr"
-- opt.foldignore		    -- ignore lines when 'foldmethod' is "indent"
-- opt.foldlevel		    -- close folds with a level higher than this
-- opt.foldlevelstart		-- 'foldlevel' when starting to edit a file
-- opt.foldmarker		    -- markers used when 'foldmethod' is "marker"
-- opt.foldmethod		    -- folding type
-- opt.foldminlines		    -- minimum number of lines for a fold to be closed
-- opt.foldnestmax		    -- maximum fold depth
-- opt.foldopen		        -- for which commands a fold will be opened
-- opt.foldtext		        -- expression used to display for a closed fold
-- opt.formatexpr		    -- expression used with "gq" command
-- opt.formatlistpat		-- pattern used to recognize a list header
-- opt.formatoptions		-- how automatic formatting is to be done
-- opt.formatprg		    -- name of external program used with "gq" command
-- opt.fsync		        -- whether to invoke fsync() after file write
-- opt.grepformat		    -- format of 'grepprg' output
-- opt.grepprg		        -- program to use for ":grep"
-- opt.guicursor		    -- GUI: settings for cursor shape and blinking
-- opt.guifont		        -- GUI: Name(s) of font(s) to be used
-- opt.guifontwide		    -- list of font names for double-wide characters
-- opt.guioptions		    -- GUI: Which components and options are used
-- opt.guitablabel		    -- GUI: custom label for a tab page
-- opt.guitabtooltip		-- GUI: custom tooltip for a tab page
-- opt.helpfile		        -- full path name of the main help file
-- opt.helpheight		    -- minimum height of a new help window
-- opt.helplang		        -- preferred help languages
-- opt.hidden		        -- don't unload buffer when it is |abandon|ed
-- opt.history		        -- number of command-lines that are remembered
-- opt.hlsearch		        -- highlight matches with last search pattern
-- opt.icon		            -- let Vim set the text of the window icon
-- opt.iconstring		    -- string to use for the Vim icon text
-- opt.imcmdline		    -- use IM when starting to edit a command line
-- opt.imdisable		    -- do not use the IM in any mode
-- opt.iminsert		        -- use :lmap or IM in Insert mode
-- opt.imsearch		        -- use :lmap or IM when typing a search pattern
-- opt.include		        -- pattern to be used to find an include file
-- opt.includeexpr		    -- expression used to process an include line
-- opt.incsearch		    -- highlight match while typing search pattern
-- opt.indentexpr		    -- expression used to obtain the indent of a line
-- opt.indentkeys		    -- keys that trigger indenting with 'indentexpr'
-- opt.infercase		    -- adjust case of match for keyword completion
-- opt.isfname		        -- characters included in file names and pathnames
-- opt.isident		        -- characters included in identifiers
-- opt.iskeyword	        -- characters included in keywords
-- opt.isprint		        -- printable characters
-- opt.joinspaces		    -- two spaces after a period with a join command
-- opt.jumpoptions		    -- specifies how jumping is done
-- opt.keymap		        -- name of a keyboard mapping
-- opt.keymodel		        -- enable starting/stopping selection with keys
-- opt.keywordprg		    -- program to use for the "K" command
-- opt.langmap		        -- alphabetic characters for other language mode
-- opt.langmenu		        -- language to be used for the menus
-- opt.langremap		    -- do apply 'langmap' to mapped characters
-- opt.lazyredraw		    -- don't redraw while executing macros
-- opt.lhistory		        -- maximum number of location lists in history
-- opt.linebreak		    -- wrap long lines at a blank
-- opt.lines		        -- number of lines in the display
-- opt.linespace		    -- number of pixel lines to use between characters
-- opt.lisp		            -- automatic indenting for Lisp
-- opt.lispoptions		    -- changes how Lisp indenting is done
-- opt.lispwords		    -- words that change how lisp indenting works
-- opt.list		            -- show <Tab> and <EOL>
-- opt.listchars		    -- characters for displaying in list mode
-- opt.loadplugins		    -- load plugin scripts when starting up
-- opt.makeef		        -- name of the errorfile for ":make"
-- opt.makeencoding		    -- encoding of external make/grep commands
-- opt.makeprg		        -- program to use for the ":make" command
-- opt.matchpairs		    -- pairs of characters that "%" can match
-- opt.matchtime		    -- tenths of a second to show matching paren
-- opt.maxcombine		    -- maximum nr of combining characters displayed
-- opt.maxfuncdepth		    -- maximum recursive depth for user functions
-- opt.maxmapdepth		    -- maximum recursive depth for mapping
-- opt.maxmempattern		-- maximum memory (in Kbyte) used for pattern search
-- opt.menuitems		    -- maximum number of items in a menu
-- opt.mkspellmem		    -- memory used before |:mkspell| compresses the tree
-- opt.modeline		        -- recognize modelines at start or end of file
-- opt.modelineexpr		    -- allow setting expression options from a modeline
-- opt.modelines		    -- number of lines checked for modelines
-- opt.modifiable		    -- changes to the text are not possible
-- opt.modified		        -- buffer has been modified
-- opt.more		            -- pause listings when the whole screen is filled
-- opt.nrformats		    -- number formats recognized for CTRL-A command
-- opt.numberwidth		    -- number of columns used for the line number
-- opt.omnifunc		        -- function for filetype-specific completion
-- opt.opendevice		    -- allow reading/writing devices on MS-Windows
-- opt.operatorfunc		    -- function to be called for |g@| operator
-- opt.packpath		        -- list of directories used for packages
-- opt.paragraphs		    -- nroff macros that separate paragraphs
-- opt.patchexpr		    -- expression used to patch a file
-- opt.patchmode		    -- keep the oldest version of a file
-- opt.path		            -- list of directories searched with "gf" et.al.
-- opt.preserveindent		-- preserve the indent structure when reindenting
-- opt.previewheight		-- height of the preview window
-- opt.previewwindow		-- identifies the preview window
-- opt.pumheight		    -- maximum number of items to show in the popup menu
-- opt.pumwidth		        -- minimum width of the popup menu
-- opt.pyxversion		    -- Python version used for pyx* commands
-- opt.quoteescape		    -- escape characters used in a string
-- opt.readonly		        -- disallow writing the buffer
-- opt.redrawtime		    -- timeout for 'hlsearch' and |:match| highlighting
-- opt.regexpengine		    -- default regexp engine to use
-- opt.report		        -- threshold for reporting nr. of lines changed
-- opt.revins		        -- inserting characters will work backwards
-- opt.rightleft		    -- window is right-to-left oriented
-- opt.rightleftcmd		    -- commands for which editing works right-to-left
-- opt.ruler		        -- show cursor line and column in the status line
-- opt.rulerformat		    -- custom format for the ruler
-- opt.runtimepath		    -- list of directories used for runtime files
-- opt.scroll		        -- lines to scroll with CTRL-U and CTRL-D
-- opt.scrollbind		    -- scroll in window as other windows scroll
-- opt.scrolljump		    -- minimum number of lines to scroll
-- opt.scrollopt		    -- how 'scrollbind' should behave
-- opt.sections		        -- nroff macros that separate sections
-- opt.secure		        -- secure mode for reading .vimrc in current dir
-- opt.selection		    -- what type of selection to use
-- opt.selectmode		    -- when to use Select mode instead of Visual mode
-- opt.sessionoptions		-- options for |:mksession|
-- opt.shada		        -- use |shada| file upon startup and exiting
-- opt.shell		        -- name of shell to use for external commands
-- opt.shellcmdflag		    -- flag to shell to execute one command
-- opt.shellpipe		    -- string to put output of ":make" in error file
-- opt.shellquote		    -- quote character(s) for around shell command
-- opt.shellredir		    -- string to put output of filter in a temp file
-- opt.shellslash		    -- use forward slash for shell file names
-- opt.shelltemp		    -- whether to use a temp file for shell commands
-- opt.shellxescape		    -- characters to escape when 'shellxquote' is (
-- opt.shellxquote		    -- like 'shellquote', but include redirection
-- opt.shiftround		    -- round indent to multiple of shiftwidth
-- opt.shortmess		    -- list of flags, reduce length of messages
-- opt.showbreak		    -- string to use at the start of wrapped lines
-- opt.showcmd		        -- show (partial) command somewhere
-- opt.showcmdloc		    -- where to show (partial) command
-- opt.showfulltag		    -- show full tag pattern when completing tag
-- opt.showmatch		    -- briefly jump to matching bracket if insert one
-- opt.showtabline		    -- tells when the tab pages line is displayed
-- opt.sidescroll		    -- minimum number of columns to scroll horizontal
-- opt.smarttab		        -- <Tab> in leading whitespace indents by 'shiftwidth'
-- opt.smoothscroll		    -- scroll by screen lines when 'wrap' is set
-- opt.spell		        -- enable spell checking
-- opt.spellcapcheck		-- pattern to locate end of a sentence
-- opt.spellfile		    -- files where |zg| and |zw| store words
-- opt.spelllang		    -- language(s) to do spell checking for
-- opt.spelloptions		    -- options for spell checking
-- opt.spellsuggest		    -- method(s) used to suggest spelling corrections
-- opt.splitkeep		    -- determines scroll behavior for split windows
-- opt.startofline		    -- commands move cursor to first non-blank in line
-- opt.statuscolumn		    -- custom format for the status column
-- opt.statusline		    -- custom format for the status line
-- opt.suffixes		        -- suffixes that are ignored with multiple match
-- opt.suffixesadd		    -- suffixes added when searching for a file
-- opt.swapfile		        -- whether to use a swapfile for a buffer
-- opt.switchbuf		    -- sets behavior when switching to another buffer
-- opt.synmaxcol		    -- maximum column to find syntax items
-- opt.syntax		        -- syntax to be loaded for current buffer
-- opt.tabclose		        -- which tab page to focus when closing a tab
-- opt.tabline		        -- custom format for the console tab pages line
-- opt.tabpagemax		    -- maximum number of tab pages for |-p| and "tab all"
-- opt.tagbsearch		    -- use binary searching in tags files
-- opt.tagcase		        -- how to handle case when searching in tags files
-- opt.tagfunc		        -- function to get list of tag matches
-- opt.taglength		    -- number of significant characters for a tag
-- opt.tagrelative		    -- file names in tag file are relative
-- opt.tags		            -- list of file names used by the tag command
-- opt.tagstack		        -- push tags onto the tag stack
-- opt.term		            -- name of the terminal
-- opt.termbidi		        -- terminal takes care of bi-directionality
-- opt.textwidth		    -- maximum width of text that is being inserted
-- opt.thesaurus		    -- list of thesaurus files for keyword completion
-- opt.thesaurusfunc		-- function to be used for thesaurus completion
-- opt.tildeop		        -- tilde command "~" behaves like an operator
-- opt.timeout		        -- time out on mappings and key codes
-- opt.title		        -- let Vim set the title of the window
-- opt.titlelen		        -- percentage of 'columns' used for window title
-- opt.titleold		        -- old title, restored when exiting
-- opt.titlestring		    -- string to use for the Vim window title
-- opt.ttimeout		        -- time out on mappings
-- opt.ttimeoutlen		    -- time out time for key codes in milliseconds
-- opt.ttytype		        -- alias for 'term'
-- opt.undoreload		    -- max nr of lines to save for undo on a buffer reload
-- opt.updatecount		    -- after this many characters flush swap file
-- opt.varsofttabstop		-- a list of number of columns between soft tab stops
-- opt.vartabstop		    -- a list of number of columns between tab stops
-- opt.verbose		        -- give informative messages
-- opt.verbosefile		    -- file to write messages in
-- opt.viewdir		        -- directory where to store files with :mkview
-- opt.viewoptions		    -- specifies what to save for :mkview
-- opt.visualbell		    -- use visual bell instead of beeping
-- opt.warn		            -- warn for shell command when buffer was changed
-- opt.whichwrap		    -- allow specified keys to cross line boundaries
-- opt.wildchar		        -- command-line character for wildcard expansion
-- opt.wildcharm		    -- like 'wildchar' but also works when mapped
-- opt.wildignore		    -- files matching these patterns are not completed
-- opt.wildignorecase		-- ignore case when completing file names
-- opt.wildmenu		        -- use menu for command line completion
-- opt.wildmode		        -- mode for 'wildchar' command-line expansion
-- opt.wildoptions		    -- specifies how command line completion is done
-- opt.winaltkeys		    -- when the windows system handles ALT keys
-- opt.window		        -- nr of lines to scroll for CTRL-F and CTRL-B
-- opt.winfixbuf		    -- keep window focused on a single buffer
-- opt.winfixheight		    -- keep window height when opening/closing windows
-- opt.winfixwidth		    -- keep window width when opening/closing windows
-- opt.winheight		    -- minimum number of lines for the current window
-- opt.winhighlight		    -- window-local highlighting
-- opt.winminheight		    -- minimum number of lines for any window
-- opt.winminwidth		    -- minimal number of columns for any window
-- opt.winwidth		        -- minimal number of columns for current window
-- opt.wrapmargin		    -- chars from the right where wrapping starts
-- opt.wrapscan		        -- searches wrap around the end of the file
-- opt.write		        -- writing to a file is allowed
-- opt.writeany		        -- write to file with no need for "!" override
-- opt.writedelay		    -- delay this many msec for each char (for debug)
