" Vim color file - northland
" Generated by http://bytefluent.com/vivify 2012-03-20
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "northland"

hi IncSearch guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
hi WildMenu guifg=#507080 guibg=#000000 guisp=#000000 gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi SignColumn guifg=#8b0000 guibg=#000000 guisp=#000000 gui=bold ctermfg=88 ctermbg=NONE cterm=bold
hi SpecialComment guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Typedef guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Title guifg=#507080 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Folded guifg=#006400 guibg=#000000 guisp=#000000 gui=bold ctermfg=22 ctermbg=NONE cterm=bold
hi PreCondit guifg=#AD6141 guibg=NONE guisp=NONE gui=bold,italic ctermfg=137 ctermbg=NONE cterm=bold
hi Include guifg=#AD6141 guibg=NONE guisp=NONE gui=bold,italic ctermfg=137 ctermbg=NONE cterm=bold
hi TabLineSel guifg=#000000 guibg=#507080 guisp=#507080 gui=bold ctermfg=NONE ctermbg=66 cterm=bold
hi StatusLineNC guifg=#000000 guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#8b0000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi Ignore guifg=#035587 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi Debug guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#003853 guisp=#003853 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Identifier guifg=#BC0007 guibg=NONE guisp=NONE gui=bold,italic ctermfg=1 ctermbg=NONE cterm=bold
hi SpecialChar guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Conditional guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Todo guifg=#507080 guibg=#000000 guisp=#000000 gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Special guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi LineNr guifg=#507080 guibg=#000000 guisp=#000000 gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi StatusLine guifg=#000000 guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi Normal guifg=#ffffff guibg=#001020 guisp=#001020 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi Label guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#507080 guibg=#000000 guisp=#000000 gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Search guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Statement guifg=#BF6F00 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#a9a9a9 guibg=NONE guisp=NONE gui=italic ctermfg=248 ctermbg=NONE cterm=NONE
hi Character guifg=#035587 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#035587 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi Boolean guifg=#BF6F00 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Operator guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#003853 guisp=#003853 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Question guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#8b0000 guisp=#8b0000 gui=underline ctermfg=NONE ctermbg=88 cterm=underline
hi DiffDelete guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE
hi ModeMsg guifg=#ffffff guibg=#8b0000 guisp=#8b0000 gui=bold ctermfg=15 ctermbg=88 cterm=bold
hi CursorColumn guifg=NONE guibg=#003853 guisp=#003853 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi Define guifg=#AD6141 guibg=NONE guisp=NONE gui=bold,italic ctermfg=137 ctermbg=NONE cterm=bold
hi Function guifg=#BC0007 guibg=NONE guisp=NONE gui=bold,italic ctermfg=1 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#507080 guibg=#000000 guisp=#000000 gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi PreProc guifg=#AD6141 guibg=NONE guisp=NONE gui=bold,italic ctermfg=137 ctermbg=NONE cterm=bold
"hi EnumerationName -- no settings --
hi Visual guifg=NONE guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi MoreMsg guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#000000 guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Exception guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Keyword guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Type guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#ffffff guibg=#444444 guisp=#444444 gui=NONE ctermfg=15 ctermbg=238 cterm=NONE
hi Cursor guifg=#ffffff guibg=#96cdcd guisp=#96cdcd gui=NONE ctermfg=15 ctermbg=152 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=bold ctermfg=NONE ctermbg=11 cterm=bold
hi PMenu guifg=#000000 guibg=#8b0000 guisp=#8b0000 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi SpecialKey guifg=#999999 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi Constant guifg=#035587 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi String guifg=#035587 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi MatchParen guifg=#8b0000 guibg=NONE guisp=NONE gui=bold ctermfg=88 ctermbg=NONE cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#035587 guibg=NONE guisp=NONE gui=bold ctermfg=24 ctermbg=NONE cterm=bold
hi Structure guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi Macro guifg=#AD6141 guibg=NONE guisp=NONE gui=bold,italic ctermfg=137 ctermbg=NONE cterm=bold
"hi Underlined -- no settings --
hi DiffAdd guifg=#ffffff guibg=#006400 guisp=#006400 gui=NONE ctermfg=15 ctermbg=22 cterm=NONE
hi TabLine guifg=#507080 guibg=#000000 guisp=#000000 gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi cif0 guifg=#bebebe guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
"hi clear -- no settings --
hi icursor guifg=#000000 guibg=#FFEE00 guisp=#FFEE00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi lcursor guifg=#000000 guibg=#00e700 guisp=#00e700 gui=NONE ctermfg=NONE ctermbg=40 cterm=NONE
hi rcursor guifg=#000000 guibg=#00CCFF guisp=#00CCFF gui=NONE ctermfg=NONE ctermbg=45 cterm=NONE
hi ncursor guifg=#000000 guibg=#FFFFFF guisp=#FFFFFF gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
hi htmlitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=underline ctermfg=252 ctermbg=234 cterm=underline
hi cursorim guifg=#ffffff guibg=#96cdcd guisp=#96cdcd gui=NONE ctermfg=15 ctermbg=152 cterm=NONE
hi htmllink guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi titled guifg=#ffffff guibg=#221100 guisp=#221100 gui=NONE ctermfg=15 ctermbg=52 cterm=NONE
hi incsearch guifg=#ffffff guibg=#0066cc guisp=#0066cc gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
hi htmlh2 guifg=#ffffff guibg=#221100 guisp=#221100 gui=bold ctermfg=15 ctermbg=52 cterm=bold
hi cursor guifg=#ffffff guibg=#cc4455 guisp=#cc4455 gui=bold ctermfg=15 ctermbg=167 cterm=bold
hi pythonstatement guifg=#0086b5 guibg=NONE guisp=NONE gui=NONE ctermfg=31 ctermbg=NONE cterm=NONE
hi menu guifg=#000000 guibg=#ff6a6a guisp=#ff6a6a gui=NONE ctermfg=NONE ctermbg=9 cterm=NONE
hi pythonimport guifg=#894c24 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=#5181ab guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi pythoncomment guifg=#5181ab guibg=NONE guisp=NONE gui=italic ctermfg=67 ctermbg=NONE cterm=NONE
hi pythonprecondit guifg=#894c24 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi pythonrawstring guifg=#4970cc guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
"hi default -- no settings --
hi pythonconditional guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi pythonrepeat guifg=#000000 guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi rubyglobalvariable guifg=#5f8700 guibg=NONE guisp=NONE gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi operatorcurlybrackets guifg=#5fafff guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi rubypredefinedidentifier guifg=#5f8700 guibg=NONE guisp=NONE gui=bold ctermfg=64 ctermbg=NONE cterm=bold
"hi def -- no settings --
hi user2 guifg=#585858 guibg=#303030 guisp=#303030 gui=NONE ctermfg=240 ctermbg=236 cterm=NONE
hi user1 guifg=#ffd7af guibg=#303030 guisp=#303030 gui=bold ctermfg=223 ctermbg=236 cterm=bold
"hi semicolon -- no settings --
hi normal guifg=#ffffff guibg=#001020 guisp=#001020 gui=NONE ctermfg=15 ctermbg=17 cterm=NONE
hi fortrantype guifg=#0F8200 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi fortranlabelnumber guifg=#8b0000 guibg=NONE guisp=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi fortranunitheader guifg=#a020f0 guibg=NONE guisp=NONE gui=bold ctermfg=129 ctermbg=NONE cterm=bold
