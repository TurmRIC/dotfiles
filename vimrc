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
"NERD Tree - source browser
Plugin 'scrooloose/nerdtree'

"Bitbake recipes syntax highlighting
Plugin 'kergoth/vim-bitbake'

"Tablist Plugin
"Fake repo since I can't find a git source for this bloody plugin that is up
"to date
Plugin 'file:///home/jeremyro/local_vim_plugins/taglist/'

" Ack-grep plugin
Plugin 'mileszs/ack.vim'

"Source Explorer - Displays declarations given correct ctag information.
Plugin 'wesleyche/SrcExpl'

"Vimux allows vim to interact with tmux panes
Plugin 'benmills/vimux'

" Trinity manages taglist, Source Explorer and NERD Tree. Includes NERD Tree
" directly - Doesn't currently support multiple tabs so it's out until further
" notice.
"Plugin 'wesleyche/Trinity'

"Tabline Remote Copy
"Plugin 'mkitt/tabline.vim.git'
"My local copy (slightly updated should fork properly on github)
Plugin 'file:///home/jeremyro/local_vim_plugins/tabline.vim/'

"Local vim repo for vecima specific items
"Plugin 'file:///home/jeremyro/VCOMMON/vim-vecima/'
"Plugin 'ssh://feanor/tftpboot/jeremyro/vim-vecima'
Plugin 'ssh://rndgit:29418/tools/vim/vim-vecima'

"View Man pages in vim
"Plugin 'vim-utils/vim-man'

" local_vimrc as a better way of setting the tags file, and possibly other
" vecima specific settings
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'

if has('nvim')
    Plugin 'arakashic/chromatica.nvim'
endif

" Linediff plugin, allow diff of groups of lines in a single file
Plugin 'AndrewRadev/linediff.vim'

Plugin 'tpope/vim-fugitive.git'

Plugin 'guns/xterm-color-table.vim'

Plugin 'vim-latex/vim-latex.git'

" Tabular
Plugin 'godlygeek/tabular.git'

" Groovy Indentation
" Plugin 'vim-scripts/groovyindent-unix'
"Temporary override of java indentation
Plugin 'xuhdev/indent-java.vim'

"json Highlighting
Plugin 'elzr/vim-json'

Plugin 'DoxygenToolkit.vim'

Plugin 'nathanalderson/yang.vim'

Plugin 'gabrielelana/vim-markdown'

call vundle#end()

" ---------------------------------------------------------------------------
" General
" ---------------------------------------------------------------------------
syntax on           "filetype syntax highlighting

set guicursor=n-v-c-sm:block-Cursor
set guicursor+=i-ci-ve:ver50-CursorIM
set guicursor+=r-cr-o:hor20-Cursor
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

if !has('nvim')
    let g:loaded_matchparen = 1 "prevent matching parens to prevent slowdown since it ignores noshowmatch apparently
    set ttymouse=xterm2 "Set correct mouse type for vim
endif

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
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

filetype plugin on "Turn the filetype plugins on to keep file type specific settings out of here.
set switchbuf+=usetab,newtab "Use a new or existing tab when opening new buffer from quickfix window

let g:load_doxygen_syntax=1     "highlight doxygen comments
"Doxygen plugin setup"
let g:DoxygenToolkit_briefTag_pre=""

" ----------------------------------------------------------------------------
" Json Highlighting config
" ----------------------------------------------------------------------------
let g:vim_json_syntax_conceal = 0 "Don't do concealing in json

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
" Chromatica Global Options
" ----------------------------------------------------------------------------
if has('nvim')
    let g:chromatica#libclang_path='/usr/lib/llvm-5.0/lib/libclang.so.1'
    "let g:chromatica#libclang_path='/opt/galiano/2.1/sysroots/x86_64-galiano_sdk-linux/usr/lib/libclang.so'
    "let g:chromatica#responsive_mode=1
    let g:chromatica#highlight_feature_level=1
    "call remote#host#RegisterPlugin('python3', expand('~/.vim/bundle/chromatica.nvim/rplugin/python3/chromatica'), [{'sync': v:true, 'name': '_chromatica', 'type': 'function', 'opts': {}},])
endif

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

" ---------------------------------------------------------------------------
" Clipboard stuff
" ----------------------------------------------------------------------------
let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }
" ----------------------------------------------------------------------------
" Mappings
" ----------------------------------------------------------------------------
" quicker access to the system clipboard
vnoremap <silent><LocalLeader>y "*yy
onoremap <silent><LocalLeader>y "*yy
nnoremap <silent><LocalLeader>y "*yy

vnoremap <silent><LocalLeader>p "*p<cr>
onoremap <silent><LocalLeader>p "*p<cr>
nnoremap <silent><LocalLeader>p "*p<cr>

" JSON cleanup
command! -range -nargs=0 -bar JSONFormat <line1>,<line2>!python -m json.tool
vnoremap <silent><LocalLeader>jt :JSONFormat<cr>
onoremap <silent><LocalLeader>jt :JSONFormat<cr>
nnoremap <silent><LocalLeader>jt :%!python -m json.tool

" XML Cleanup
command! -range -nargs=0 -bar XMLFormat <line1>,<line2>!xmllint --format -encode UTF-8 --recover - 2>/dev/null
vnoremap <silent><LocalLeader>xt :XMLFormat<cr>
onoremap <silent><LocalLeader>xt :XMLFormat<cr>
nnoremap <silent><LocalLeader>xt :%!xmllint --format -encode UTF-8 --recover -<cr>

" bt switches window splits like gt does tabs
nnoremap bt <C-W>w

"Ctl+cursor keys move between splits
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-down> :wincmd j<CR>
nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-right> :wincmd l<CR>
" Convert file type to unix
map <LocalLeader>u :setlocal ff=unix
" Tidy HTML file
map <LocalLeader>t :!tidy -miq -wrap 0 %

"Display what syntax highlighting groups are at the cursor
"map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
map <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" Clear search highlighting until search is interacted with again
nnoremap <LocalLeader>/ :noh<CR>

" Ack the current word under the cursor
nnoremap <LocalLeader>a :Ack! <C-r><C-w><CR>
" Ack the current word under the cursor from ramdisk_root
nnoremap <LocalLeader>A :Ack! <C-r><C-w> <C-r>=b:ackdir<CR><CR>

vnoremap <LocalLeader>l :Linediff<CR>

" ----------------------------------------------------------------------------
" Vimux Settings and Mappings
" ----------------------------------------------------------------------------
let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"
" Prompt for a command to run
vnoremap <silent><LocalLeader>vp :VimuxPromptCommand<CR>
onoremap <silent><LocalLeader>vp :VimuxPromptCommand<CR>
nnoremap <silent><LocalLeader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
vnoremap <silent><LocalLeader>vl :VimuxRunLastCommand<CR>
onoremap <silent><LocalLeader>vl :VimuxRunLastCommand<CR>
nnoremap <silent><LocalLeader>vl :VimuxRunLastCommand<CR>

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

"Following a tag will open a new tab, not replace the current window
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"Return from a tag to the previous tab
"nnoremap <silent><A-T> <C-T> :tabc<CR> :tabp<CR>


" ---------------------------------------------------------------------------
" NERD Tree
" ---------------------------------------------------------------------------
let NERDTreeWinPos = "left"
" tn toggles on and off the NERDTree window

function NERDTreeToggleMirror()
    if 0 == stridx(join(map(range(1, winnr('$')), 'bufname(winbufnr(v:val))'), ' '), 'NERD_tree')
        NERDTreeToggle
        return
    endif
    NERDTreeMirror
    if -1 == stridx(join(map(range(1, winnr('$')), 'bufname(winbufnr(v:val))'), ' '), 'NERD_tree')
        NERDTreeToggle
    endif
endfunction

nnoremap <silent> tn :call NERDTreeToggleMirror()<CR>

" ---------------------------------------------------------------------------
" Source Explorer
" ---------------------------------------------------------------------------
let g:SrcExpl_pluginList = ["Source_Explorer", "__Taglist__", "_NERD_tree_" ]
let g:SrcExpl_isUpdateTags = 0
" ts toggles on and off the source explorer window
nnoremap <silent> ts :SrcExplToggle<CR>


" ---------------------------------------------------------------------------
" TagList
" ---------------------------------------------------------------------------
let g:TagListInstalled = filter(split(&rtp, ','), 'v:val =~? "tag"')
if (len(g:TagListInstalled) > 0)
    let Tlist_Inc_Winwidth = 0          "Don't increase window width (doesn't work with Terminator)
    let Tlist_Ctags_Cmd='/usr/bin/ctags-exuberant' "Set tag command
    let Tlist_Auto_Open = 1             "Auto open Tag List
    let Tlist_Process_File_Always = 1   "Always process Tag List
    let Tlist_Auto_Highlight_Tag = 1    "Auto Highlight current tag
    let Tlist_Use_Right_Window = 1      "Open on the right
    "let Tlist_Display_Prototype = 1    "Display full prototype
    let Tlist_Exit_OnlyWindow = 1       "if you are the last, exit
    "let Tlist_Compact_Format = 1        "Show compact information
    let Tlist_Enable_Fold_Column = 0    "Don't Show the fold indicator column
    let Tlist_File_Fold_Auto_Close = 1  "Autoclose the fold for non-active buffer

    let g:Tlist_langs = ['c', 'cpp', 'vim', 'java', 'perl', 'python', 'js']

    function CheckWideMonitor()
        if &columns > 180
            let g:Tlist_Auto_Open = 1
            let g:Tlist_WinWidth = 36
            let g:NERDTreeWinSize = 36 
            if (!exists('b:TagListWindowNumber'))
                let b:TagListWindowNumber = 1
            endif
        elseif &columns < 110 
            let g:Tlist_Auto_Open = 0
            let g:Tlist_WinWidth = 0
            let g:NERDTreeWinSize = 0 
            if (!exists('b:TagListWindowNumber'))
                let b:TagListWindowNumber = -3
            endif
        else
            let g:Tlist_Auto_Open = 1
            let g:Tlist_WinWidth = 31
            let g:NERDTreeWinSize = 31 
            if (!exists('b:TagListWindowNumber'))
                let b:TagListWindowNumber = 1
            endif
        endif
    endfunction

    function OpenOrCloseTlist()
        if ('__Tag_List__' == bufname('%'))
            wincmd h
        endif
        if (b:TagListWindowNumber > 0 && g:Tlist_WinWidth > 0)
            TlistOpen
            if ('__Tag_List__' == bufname('%'))
                wincmd h
            endif
        else
            TlistClose
        endif
    endfunction

    function CheckAndToggleTlist()
        TlistToggle
        let b:TagListWindowNumber = index(map(range(1, winnr('$')), 'bufname(winbufnr(v:val))'), '__Tag_List__')
        if ('__Tag_List__' == bufname('%'))
            wincmd h
        endif
    endfunction

    function UpdateTlistState()
        call CheckWideMonitor()
        call OpenOrCloseTlist()
    endfunction

    autocmd VimResized * call UpdateTlistState()
    if has('nvim')
        autocmd TabNewEntered * call UpdateTlistState()
    endif
    autocmd WinEnter * call CheckWideMonitor()
    autocmd BufWinEnter * call CheckWideMonitor()

" tt toggles on and off the tag list
    nnoremap tt :call CheckAndToggleTlist()<CR>
endif

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
