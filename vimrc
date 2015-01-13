" ---------------------------------------------------------------------------
" Vundle
" ---------------------------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

"Syntastic
Plugin 'scrooloose/syntastic.git'

"Tabline Remote Copy
"Plugin 'mkitt/tabline.vim.git'
"My local copy (slightly updated should fork properly on github)
Plugin 'file:///home/jeremyro/local_vim_plugins/tabline.vim/'
"Fake repo since I can't find a git source for this bloody plugin that is up
"to date
Plugin 'file:///home/jeremyro/local_vim_plugins/taglist/'
"Local vim repo for vecima specific items
Plugin 'file:///home/jeremyro/VCOMMON/vim-vecima/'

Plugin 'xolox/vim-misc.git'
Plugin 'xolox/vim-easytags.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'guns/xterm-color-table.vim'
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex.git'

call vundle#end()

" ---------------------------------------------------------------------------
" General
" ---------------------------------------------------------------------------

set nocompatible    "don't emulate original vi
set modelines=0     "prevent security exploits
filetype on         "identify file types
filetype indent on  "indent based on filetype
set cino=t0=0l1(0W2s
" t0 - Don't indent function declarations
" l1 - Align with case label instead of statements after it (if any)
" =0 - Prevent auto indentation after case statement since we use { after that and they indent yet again.
" (0 - When in unclosed parentheses align with first non whitespace character in the same level
" W8 - When in unclosed parentheses and the ( is the last character only indent 8 spaces
set autochdir       "working directory follows current file
set history=1000    "lots of command line history
colorscheme miko
let &colorcolumn="80,".join(range(100,300),",") "set colourcolumns for 80 and 100+ columns.

if v:progname != "nvim"
    let g:loaded_matchparen = 1 "prevent matching parens to prevent slowdown since it ignores noshowmatch apparently
endif

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
"call pathogen#infect() "Use pathogen to load plugins from ~/.vim/bundle/
syntax on           "filetype syntax highlighting
set ofu=syntaxcomplete#Complete
set diffopt=vertical,filler,iwhite
set diffexpr=MyDiff()
function MyDiff()
   let opt = ""
   if &diffopt =~ "icase"
     let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
     let opt = opt . "-b "
   endif
   silent execute "!diff -a -d --binary " . opt . v:fname_in . " " . v:fname_new .
    \  " > " . v:fname_out
endfunction
set mouse=a         "Allow mouse use
set ttymouse=xterm2 "Set correct mouse type
set expandtab       "Turn tabs into spaces
set tabstop=4       "use 4-space tabs when [tab] is pressed
set shiftwidth=4    "use 4-space tabs when reading files
set showmatch       "highlight the bracket match
set ruler           "always show the bottom line
set showmode        "show mode (INSERT/OVER) in ruler
set autoindent      "auto-indent when going to a new line
set smartindent     "guess the indent level based on code
set showcmd         "show partial cmd in ruler
set ignorecase      "ignore case when searching (search in all lower case!)
set smartcase       "If upper case is provided in searching, search for it
set incsearch       "highlight search terms as you search
set backspace=indent,eol,start "for ssh terminals
set vb t_vb=        "shush, no beep
set tabpagemax=50   "Open 50 max tabs on startup
set showtabline=2   "Always show the tab bar.
set nu              "Turn on line numbers on the left
set wildmenu        "turn on wild menu (better filename completion)
set wildmode=list:longest,full
set wildignore=*.o,*.obj,*.bak,*.exe,*.so*,*.a,CVS/ "don't list when tab-complete open
"A status line at the bottom
set statusline=%<%f\ %([%R%M]%)\ [%{&ff}]\ [%l,%v]\ [%p%%]\ %{SyntasticStatuslineFlag()}%=%(Tag:[%{Tlist_Get_Tagname_By_Line()}]%)
set laststatus=2                    "always show status line
setlocal spell spelllang=en_us  "set spell check language
"Set custom directory for swap files so that they are always on a local filesystem
set directory=~/.vim/swapfiles//
set backupdir=~/.vim/backups//
filetype plugin on "Turn the filetype plugins on to keep file type specific settings out of here.

let g:load_doxygen_syntax=1     "highlight doxygen comments

" ----------------------------------------------------------------------------
" Tall Monitor configuration
" ----------------------------------------------------------------------------
function CheckTallMonitor()
    if (&lines > 70)
        set scrolloff=20    "keep 20 lines of context at on the tall monitor
    else
        set scrolloff=3     "keep 3 lines of context at on the widescreen monitor
    endif
endfunction
call CheckTallMonitor()
autocmd VimResized * call CheckTallMonitor()

" ----------------------------------------------------------------------------
" Syntastic Options
" ----------------------------------------------------------------------------
" Sets up the standard include directories based on your current working directory

let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_balloons=1
let g:syntastic_stl_format = '[%E{Err:%e Line:%fe}%B{, }%W{Warn:%w Line:%fw}]'
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0

" ----------------------------------------------------------------------------
" EasyTags
" ----------------------------------------------------------------------------
let g:easytags_dynamic_files = 1 "tells easytags to use the vim dynamic tags file
"let g:easytags_auto_update = 0 "tells easytags not to automatically update the tags file
let g:easytags_python_enabled = 1 "tells easytags to use python if available
"let g:easytags_updatetime_warn = 0
"let g:easytags_updatetime_min = 30000
let g:easytags_async = 1 "tells easytags to asynchronously update the tags file
"autocmd Bufwrite *.[ch],*.def UpdateTags
autocmd BufRead,BufNewFile *.[ch],*.def HighlightTags

" ----------------------------------------------------------------------------
" Autocommands
" ----------------------------------------------------------------------------
"Set the titlestring to the current directory/filename
autocmd TabEnter * let &titlestring = expand("%:p:h:t") . '/' . expand("%:p:t")
autocmd WinEnter * let &titlestring = expand("%:p:h:t") . '/' . expand("%:p:t")

:set title
:set formatoptions=lor
:set lbr        "used when wrap is on to define wrap behaviour

" ---------------------------------------------------------------------------
" Variables
" ---------------------------------------------------------------------------
let maplocalleader = ","

" ----------------------------------------------------------------------------
" quicker access to the system clipboard
" ----------------------------------------------------------------------------

vnoremap <silent><LocalLeader>y "*yy
onoremap <silent><LocalLeader>y "*yy
nnoremap <silent><LocalLeader>y "*yy

vnoremap <silent><LocalLeader>p "*p<cr>
onoremap <silent><LocalLeader>p "*p<cr>
nnoremap <silent><LocalLeader>p "*p<cr>

" ----------------------------------------------------------------------------
" Mappings
" ----------------------------------------------------------------------------
" bt switches window splits like gt does tabs
nnoremap bt <C-W>w

" Convert file type to unix
map <LocalLeader>u :setlocal ff=unix

"Display what syntax highlighting groups are at the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" ----------------------------------------------------------------------------
" Spellchecking
" ----------------------------------------------------------------------------
" :ss toggles spell checking
map <LocalLeader>ss :setlocal spell!<cr>

" spell checking shortcuts (next, prev, add, suggest)
map <LocalLeader>sn ]s
map <LocalLeader>sp [s
map <LocalLeader>sa zg
map <LocalLeader>s? z=

" ---------------------------------------------------------------------------
" Ctags
" ---------------------------------------------------------------------------
" Provide tab completion of functions and variables when the <tab> button is
" pressed in the middle of writing a word (note: press any key in the menu
" to select the option and output the key you pressed!)  ie: Keep Typing
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
      return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

"Settings for the TagList plugin
let Tlist_Inc_Winwidth = 0          "Don't increase window width (doesn't work with Terminator)
let Tlist_Ctags_Cmd='/usr/bin/ctags-exuberant' "Set tag command
let Tlist_Auto_Open = 1             "Auto open Tag List
let Tlist_Process_File_Always = 1   "Always process Tag List
let Tlist_Auto_Highlight_Tag = 1    "Auto Highlight current tag
let Tlist_Use_Right_Window = 1      "Open on the right
"let Tlist_Display_Prototype = 1    "Display full prototype
let Tlist_Exit_OnlyWindow = 1       "if you are the last, kill yourself
"let Tlist_Compact_Format = 1        "Show compact information
let Tlist_Enable_Fold_Column = 0    "Don't Show the fold indicator column
let Tlist_File_Fold_Auto_Close = 1  "Autoclose the fold for non-active buffer
function CheckWideMonitor()
    let l:old_winwidth=0
    if exists('Tlist_WinWidth')
        let l:old_winwidth=g:Tlist_WinWidth
    endif
    if &columns > 180
        let g:Tlist_WinWidth = 60
        if (exists(':TlistOpen') && &ft == 'c')
            TlistOpen
        endif
    elseif &columns < 110 
        let g:Tlist_Auto_Open = 0
        let g:Tlist_WinWidth = 0
        if (exists(':TlistClose') && &ft == 'c')
            TlistClose
        endif
    else
        let g:Tlist_WinWidth = 30
        if (exists(':TlistOpen') && &ft == 'c')
            TlistOpen
        endif
    endif
    if (exists(':TlistClose') && &ft == 'c')
        if l:old_winwidth != g:Tlist_WinWidth
            TlistClose
            TlistOpen
        endif
    endif
endfunction
call CheckWideMonitor()
autocmd VimResized * call CheckWideMonitor()

" tt toggles on and off the tag list
nnoremap tt :TlistToggle<CR>

"Doxygen plugin setup"
let g:DoxygenToolkit_briefTag_pre=""

"Look for the tags file backward, giveup if 14_Overlay is found
set tags=./.vimtags;14_Overlay/;4D_Overlay/

"Following a tag will open a new tab, not replace the current window
nnoremap <silent><C-]> <C-w><C-]><C-w>T
"Return from a tag to the previous tab
nnoremap <silent><C-T> <C-T> :tabc<CR> :tabp<CR>

"Spell Check Help
"   zg  Add word to dictionary
"   z=  See spell check word suggestions
"   ]s  move to next misspelled word
"   [s  move to prev misspelled word

"Undo Help
"   :earlier [time]     ex :earlier 2h
"   :later [time]       ex :later 2h
"   g-  move 1 state back
"   g+  move 1 state forward

"Tab Help
"   :tabnew [file]  Create a new tab, [file] is optional
"   :tabdo [cmd]    Execute the cmd on all tabs | ex :tabdo q
"   gt              Next tab
"   gT              Prev tab
"   $ vim -p *.c    At bash: open all .c files in tabs

"Windows
"   :sp             Split the window horizontally
"   :vsp            Split the window vertically
"   Ctrl-W          Move between splits

"Doxygen Toolkit
"   download http://www.vim.org/scripts/script.php?script_id=987
"   install into .vim/plugins
"   Cursor on function run :Dox     Inserts Doxygen Header

"Marks Help
"   `.              Jump to last change
"   m<character>    Set the <character> as a mark
"   `<character>    Jump to the <character> mark
"   :marks          Show all marks

"Working with Words
"   [I              List all instances of word under cursor
"   w               move to the next Word
"   b               move Back one word
"   y4w             Yank four Words
"   d4w             Delete four Words
"   cw              Change current Word
"   vw              Highlight current word


"Tags are functions, variables and the like
"Tag List
"   tt              Toggle Tag List on/off
"   bt              Switch between file/taglist
"   In Tag List Window:
"   arrow keys      Move between tags
"   <ctrl>-t        Open tag in new tab
"   <enter>         Goto tag in current window
"   - / +           Fold/Unfold groupings

"Tags (quickly jump to functions)
"       =bsd(in project root dir run: exctags -R .
"       =linux(in project root dir run: ctags -R .
"   CTRL-]          "Follow" Tag
"   CTRL-T          "Go Back" from following tag
