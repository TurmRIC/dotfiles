" Vim color file - miko
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "miko"

hi ColorColumn guibg=#262626 gui=NONE ctermbg=235 cterm=NONE
hi Cursor guifg=#ffffff guibg=#5fff00 guisp=#5fff00 gui=bold ctermfg=15 ctermbg=82 cterm=bold
hi CursorIM guifg=#070707 guibg=#7fff00 guisp=#7fff00 gui=NONE ctermfg=232 ctermbg=118 cterm=NONE
"hi CursorColumn -- no settings --
"hi CursorLine -- no settings --
hi DiffAdd guifg=#dadada guibg=#0000ff guisp=NONE ctermfg=253 ctermbg=21 cterm=NONE
hi DiffChange guifg=#dadada guibg=#008787 guisp=NONE ctermfg=253 ctermbg=30 cterm=NONE
hi DiffDelete guifg=#00afff guibg=#444444 guisp=NONE ctermfg=39 ctermbg=238 cterm=NONE
hi DiffText guifg=#444444 guibg=#00afff guisp=NONE ctermfg=238 ctermbg=39 cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
"hi Error -- no settings --
hi LineNr guifg=#d7d7d7 guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi VertSplit guifg=#005f87 guibg=#d7d7d7 guisp=#d7d7d7 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi Folded guifg=#d7d7d7 guibg=#005fdf guisp=#005f87 gui=NONE ctermfg=188 ctermbg=26 cterm=NONE
hi FoldColumn guifg=#005f87 guibg=#d7d7d7 guisp=#d7d7d7 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
"hi SignColumn -- no settings --
hi IncSearch guifg=#ffffff guibg=#0066cc guisp=#0066cc gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
"hi MatchParen -- no settings --
"hi ModeMsg -- no settings --
"hi MoreMsg -- no settings --
hi NonText guifg=#d7d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=188 ctermbg=NONE cterm=NONE
hi Normal guifg=#afd7ff guibg=#000000 guisp=NONE gui=NONE ctermfg=153 ctermbg=0 cterm=NONE
hi PMenu guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=NONE ctermbg=24 cterm=NONE
hi PMenuSel guifg=#005f87 guibg=#d7d7d7 guisp=#d7d7d7 gui=NONE ctermfg=24 ctermbg=188 cterm=NONE
hi PMenuThumb guifg=NONE guibg=#d7d7d7 guisp=#d7d7d7 gui=NONE ctermfg=NONE ctermbg=188 cterm=NONE
"hi Question -- no settings --
"hi Search -- no settings --
"hi SpecialKey -- no settings --
hi clear SpellBad
hi SpellBad term=underline cterm=underline
hi clear SpellCap
hi SpellCap term=underline cterm=underline
hi clear SpellRare
hi SpellRare term=underline cterm=underline
hi clear SpellLocal
hi SpellLocal term=underline cterm=underline
hi StatusLine guifg=#000000 guibg=#afd7ff guisp=#afd7ff gui=NONE ctermfg=16 ctermbg=153 cterm=NONE
hi StatusLineNC guifg=#d7d7d7 guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi TabLine guifg=#d7d7d7 guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi TabLineFill guifg=#d7d7d7 guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi TabLineSel guifg=#000000 guibg=#afd7ff guisp=#afd7ff gui=bold ctermfg=16 ctermbg=153 cterm=NONE
hi Title guifg=#d7d7d7 guibg=#005f87 guisp=#005f87 gui=NONE ctermfg=188 ctermbg=24 cterm=NONE
hi Visual guifg=#080808 guibg=#afd7ff guisp=#afd7ff gui=NONE ctermfg=232 ctermbg=153 cterm=NONE
"hi VisualNOS -- no settings --
"hi WarningMsg -- no settings --
"hi WildMenu -- no settings --

"Highlight groups for taglist plugin
hi MyTagListFileName guifg=#000000 guibg=#afd7ff guisp=#afd7ff gui=bold ctermfg=16 ctermbg=153 cterm=NONE
hi MyTagListTagName guifg=#000000 guibg=#afd7ff guisp=#afd7ff gui=bold ctermfg=16 ctermbg=153 cterm=NONE

hi Boolean guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Character guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi cif0 guifg=#bebebe guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
"hi clear -- no settings --
hi Comment guifg=#5fd700 guibg=NONE guisp=NONE gui=NONE ctermfg=76 ctermbg=NONE cterm=NONE
hi Conditional guifg=#5fffff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi Constant guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
"hi CTagsClass -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsMember -- no settings --
hi Debug guifg=#87d7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Define guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#87af5f guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
"hi Directory -- no settings --
"hi EnumerationName -- no settings --
"hi EnumerationValue -- no settings --
hi Exception guifg=#000000 guibg=#ff0000 guisp=NONE gui=NONE ctermfg=0 ctermbg=196 cterm=NONE
hi Float guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Function guifg=#5fafff guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi htmlh2 guifg=#ffffff guibg=#221100 guisp=#221100 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi htmllink guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi icursor guifg=#000000 guibg=#FFEE00 guisp=#FFEE00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi Identifier guifg=#dfdf00 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
"hi Ignore -- no settings --
hi Include guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Keyword guifg=#5fff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi Label guifg=#5fffff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi lcursor guifg=#070707 guibg=#7fff00 guisp=#7fff00 gui=NONE ctermfg=232 ctermbg=118 cterm=NONE
"hi LocalVariable -- no settings --
hi Macro guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi menu guifg=#000000 guibg=#ff6a6a guisp=#ff6a6a gui=NONE ctermfg=NONE ctermbg=9 cterm=NONE
hi ncursor guifg=#000000 guibg=#FFFFFF guisp=#FFFFFF gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi Number guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi operatorcurlybrackets guifg=#5fafff guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi Operator guifg=#5fffaf guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ff8700 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=#5181ab guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi pythoncomment guifg=#5181ab guibg=NONE guisp=NONE gui=italic ctermfg=67 ctermbg=NONE cterm=NONE
hi pythonconditional guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi pythonimport guifg=#894c24 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi pythonprecondit guifg=#894c24 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi pythonrawstring guifg=#4970cc guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi pythonrepeat guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi pythonstatement guifg=#0086b5 guibg=NONE guisp=NONE gui=NONE ctermfg=31 ctermbg=NONE cterm=NONE
hi rcursor guifg=#000000 guibg=#00CCFF guisp=#00CCFF gui=NONE ctermfg=NONE ctermbg=45 cterm=NONE
hi Repeat guifg=#5fffff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
hi rubyglobalvariable guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#5f8700 guibg=NONE guisp=NONE gui=bold ctermfg=64 ctermbg=NONE cterm=bold
hi SpecialChar guifg=#87d7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#87d7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Special guifg=#87d7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi Statement guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi StorageClass guifg=#5fff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi String guifg=#ffd700 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
hi Structure guifg=#5fff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi Tag guifg=#87d7ff guibg=NONE guisp=NONE gui=NONE ctermfg=117 ctermbg=NONE cterm=NONE
hi titled guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
"hi Todo -- no settings --
hi Typedef guifg=#5fff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi Type guifg=#5fff5f guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
"hi Union -- no settings --
hi user1 guifg=#ffd7af guibg=#303030 guisp=#303030 gui=bold ctermfg=223 ctermbg=236 cterm=bold
hi user2 guifg=#585858 guibg=#303030 guisp=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE
