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

"Syntastic Highligt Groups
hi SyntasticError           ctermbg=88      guibg=#870000
hi SyntasticWarning         ctermbg=94      guibg=#875f00
hi SyntasticStyleError      ctermbg=88      guibg=#870000
hi SyntasticStyleWarning    ctermbg=94      guibg=#875f00

"OverLength highlight group
hi OverLength               ctermbg=52      guibg=#5f0000

hi Normal                   guifg=#afd7ff   guibg=#080808   guisp=NONE    gui=NONE
hi Normal                   ctermfg=153     ctermbg=232     cterm=NONE
hi ColorColumn              guifg=NONE      guibg=#262626   guisp=NONE    gui=NONE
hi ColorColumn              ctermfg=NONE    ctermbg=235     cterm=NONE
hi Cursor                   guifg=#ffffff   guibg=#5fff00   guisp=#5fff00 gui=bold
hi Cursor                   ctermfg=15      ctermbg=82      cterm=bold
hi CursorIM                 guifg=#070707   guibg=#7fff00   guisp=#7fff00 gui=NONE
hi CursorIM                 ctermfg=232     ctermbg=118     cterm=NONE
hi CursorColumn             guifg=NONE      guibg=#1c1c1c   guisp=NONE    gui=NONE
hi CursorColumn             ctermfg=NONE    ctermbg=234     cterm=NONE
hi CursorLine               guifg=NONE      guibg=#1c1c1c   guisp=NONE    gui=NONE
hi CursorLine               ctermfg=NONE    ctermbg=234     cterm=NONE
hi CursorLineNR             guifg=#00ff5f   guibg=#005f87   guisp=NONE    gui=NONE
hi CursorLineNR             ctermfg=47      ctermbg=24      cterm=NONE
hi DiffAdd                  guifg=#dadada   guibg=#0000ff   guisp=NONE    gui=NONE
hi DiffAdd                  ctermfg=253     ctermbg=21      cterm=NONE
hi DiffChange               guifg=#dadada   guibg=#008787   guisp=NONE    gui=NONE
hi DiffChange               ctermfg=253     ctermbg=30      cterm=NONE
hi DiffDelete               guifg=#00afff   guibg=#444444   guisp=NONE    gui=NONE
hi DiffDelete               ctermfg=39      ctermbg=238     cterm=NONE
hi DiffText                 guifg=#444444   guibg=#00afff   guisp=NONE    gui=NONE
hi DiffText                 ctermfg=238     ctermbg=39      cterm=NONE
hi ErrorMsg                 guifg=#af0000   guibg=NONE      guisp=NONE    gui=NONE
hi ErrorMsg                 ctermfg=124     ctermbg=NONE    cterm=NONE
hi Error                    guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Error                    ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi LineNr                   guifg=#d7d7d7   guibg=#005f87   guisp=#005f87 gui=NONE
hi LineNr                   ctermfg=188     ctermbg=24      cterm=NONE
hi VertSplit                guifg=#005f87   guibg=#d7d7d7   guisp=#d7d7d7 gui=NONE
hi VertSplit                ctermfg=188     ctermbg=24      cterm=NONE
hi Folded                   guifg=#d7d7d7   guibg=#005fdf   guisp=#005f87 gui=NONE
hi Folded                   ctermfg=188     ctermbg=26      cterm=NONE
hi FoldColumn               guifg=#005f87   guibg=#d7d7d7   guisp=#d7d7d7 gui=NONE
hi FoldColumn               ctermfg=188     ctermbg=24      cterm=NONE
hi SignColumn               guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi SignColumn               ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi IncSearch                guifg=#ffffff   guibg=#0066cc   guisp=#0066cc gui=NONE
hi IncSearch                ctermfg=15      ctermbg=26      cterm=NONE
hi MatchParen               guifg=#080808   guibg=#afd7ff   guisp=NONE    gui=NONE
hi MatchParen               ctermfg=232     ctermbg=153     cterm=NONE
hi ModeMsg                  guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi ModeMsg                  ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi MoreMsg                  guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi MoreMsg                  ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi NonText                  guifg=#d7d7d7   guibg=NONE      guisp=NONE    gui=NONE
hi NonText                  ctermfg=188     ctermbg=NONE    cterm=NONE
hi PMenu                    guifg=#5f0000   guibg=#ffff00   guisp=#545658 gui=NONE
hi PMenu                    ctermfg=52      ctermbg=226     cterm=NONE
hi PMenuSbar                guifg=#ffff00   guibg=#5f0000   guisp=#005f87 gui=NONE
hi PMenuSbar                ctermfg=226     ctermbg=52      cterm=NONE
hi PMenuSel                 guifg=#005f00   guibg=#ffff00   guisp=#d7d7d7 gui=NONE
hi PMenuSel                 ctermfg=22      ctermbg=226     cterm=NONE
hi PMenuThumb               guifg=#af00ff   guibg=#ffff00   guisp=#d7d7d7 gui=NONE
hi PMenuThumb               ctermfg=129     ctermbg=226     cterm=NONE
hi Question                 guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Question                 ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Search                   guifg=NONE      guibg=NONE      guisp=NONE    gui=inverse
hi Search                   ctermfg=NONE    ctermbg=NONE    cterm=inverse
hi SpecialKey               guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi SpecialKey               ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi clear SpellBad
hi SpellBad                 guifg=NONE      guibg=NONE      guisp=NONE    gui=underline,bold
hi SpellBad                 ctermfg=NONE    ctermbg=NONE    cterm=underline,bold
hi clear SpellCap
hi SpellCap                 guifg=NONE      guibg=NONE      guisp=NONE    gui=underline
hi SpellCap                 ctermfg=NONE    ctermbg=NONE    cterm=underline
hi clear SpellRare
hi SpellRare                guifg=NONE      guibg=NONE      guisp=NONE    gui=underline,bold
hi SpellRare                ctermfg=NONE    ctermbg=NONE    cterm=underline,bold
hi clear SpellLocal
hi SpellLocal               guifg=NONE      guibg=NONE      guisp=NONE    gui=underline,bold
hi SpellLocal               ctermfg=NONE    ctermbg=NONE    cterm=underline,bold
hi StatusLine               guifg=#000000   guibg=#afd7ff   guisp=#afd7ff gui=NONE
hi StatusLine               ctermfg=16      ctermbg=153     cterm=NONE
hi StatusLineNC             guifg=#d7d7d7   guibg=#005f87   guisp=#005f87 gui=NONE
hi StatusLineNC             ctermfg=188     ctermbg=24      cterm=NONE
hi TabLine                  guifg=#d7d7d7   guibg=#005f87   guisp=#005f87 gui=NONE
hi TabLine                  ctermfg=188     ctermbg=24      cterm=NONE
hi TabLineFill              guifg=#d7d7d7   guibg=#005f87   guisp=#005f87 gui=NONE
hi TabLineFill              ctermfg=188     ctermbg=24      cterm=NONE
hi TabLineSel               guifg=#000000   guibg=#afd7ff   guisp=#afd7ff gui=bold
hi TabLineSel               ctermfg=16      ctermbg=153     cterm=bold
hi Title                    guifg=#d7d7d7   guibg=#005f87   guisp=#005f87 gui=NONE
hi Title                    ctermfg=188     ctermbg=24      cterm=NONE
hi Visual                   guifg=#080808   guibg=#afd7ff   guisp=#afd7ff gui=NONE
hi Visual                   ctermfg=232     ctermbg=153     cterm=NONE
hi VisualNOS                guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi VisualNOS                ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi WarningMsg               guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi WarningMsg               ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi WildMenu                 guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi WildMenu                 ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Boolean                  guifg=#ffffff   guibg=NONE      guisp=NONE    gui=bold
hi Boolean                  ctermfg=15      ctermbg=NONE    cterm=bold
hi Character                guifg=#ff0000   guibg=NONE      guisp=NONE    gui=NONE
hi Character                ctermfg=196     ctermbg=NONE    cterm=NONE
hi cif0                     guifg=#bebebe   guibg=NONE      guisp=NONE    gui=NONE
hi cif0                     ctermfg=7       ctermbg=NONE    cterm=NONE
hi Comment                  guifg=#5fd700   guibg=NONE      guisp=NONE    gui=NONE
hi Comment                  ctermfg=76      ctermbg=NONE    cterm=NONE
hi Conditional              guifg=#5fffff   guibg=NONE      guisp=NONE    gui=NONE
hi Conditional              ctermfg=87      ctermbg=NONE    cterm=NONE
hi Constant                 guifg=#ff00ff   guibg=NONE      guisp=NONE    gui=NONE
hi Constant                 ctermfg=201     ctermbg=NONE    cterm=NONE
hi CTagsClass               guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi CTagsClass               ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi CTagsGlobalConstant      guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi CTagsGlobalConstant      ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi CTagsGlobalVariable      guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi CTagsGlobalVariable      ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi CTagsImport              guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi CTagsImport              ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi CTagsMember              guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi CTagsMember              ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Debug                    guifg=#87d7ff   guibg=NONE      guisp=NONE    gui=NONE
hi Debug                    ctermfg=117     ctermbg=NONE    cterm=NONE
hi DefinedName              guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi DefinedName              ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Define                   guifg=#ff8700   guibg=NONE      guisp=NONE    gui=NONE
hi Define                   ctermfg=208     ctermbg=NONE    cterm=NONE
hi Delimiter                guifg=#87af5f   guibg=NONE      guisp=NONE    gui=NONE
hi Delimiter                ctermfg=107     ctermbg=NONE    cterm=NONE
hi Directory                guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Directory                ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi EnumerationName          guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi EnumerationName          ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi EnumerationValue         guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi EnumerationValue         ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Exception                guifg=#000000   guibg=#ff0000   guisp=NONE    gui=NONE
hi Exception                ctermfg=0       ctermbg=196     cterm=NONE
hi Float                    guifg=#ff0000   guibg=NONE      guisp=NONE    gui=NONE
hi Float                    ctermfg=196     ctermbg=NONE    cterm=NONE
hi Function                 guifg=#5fafff   guibg=NONE      guisp=NONE    gui=bold
hi Function                 ctermfg=75      ctermbg=NONE    cterm=bold
hi htmlh2                   guifg=#ffffff   guibg=#221100   guisp=#221100 gui=bold
hi htmlh2                   ctermfg=15      ctermbg=52      cterm=bold
hi htmllink                 guifg=#ffff00   guibg=NONE      guisp=NONE    gui=NONE
hi htmllink                 ctermfg=11      ctermbg=NONE    cterm=NONE
hi icursor                  guifg=#000000   guibg=#FFEE00   guisp=#FFEE00 gui=NONE
hi icursor                  ctermfg=NONE    ctermbg=11      cterm=NONE
hi Identifier               guifg=#dfdf00   guibg=NONE      guisp=NONE    gui=NONE
hi Identifier               ctermfg=184     ctermbg=NONE    cterm=NONE
hi Ignore                   guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Ignore                   ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Include                  guifg=#ff8700   guibg=NONE      guisp=NONE    gui=NONE
hi Include                  ctermfg=208     ctermbg=NONE    cterm=NONE
hi Keyword                  guifg=#5fff5f   guibg=NONE      guisp=NONE    gui=NONE
hi Keyword                  ctermfg=83      ctermbg=NONE    cterm=NONE
hi Label                    guifg=#5fffff   guibg=NONE      guisp=NONE    gui=NONE
hi Label                    ctermfg=87      ctermbg=NONE    cterm=NONE
hi lcursor                  guifg=#070707   guibg=#7fff00   guisp=#7fff00 gui=NONE
hi lcursor                  ctermfg=232     ctermbg=118     cterm=NONE
hi LocalVariable            guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi LocalVariable            ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Macro                    guifg=#ff8700   guibg=NONE      guisp=NONE    gui=NONE
hi Macro                    ctermfg=208     ctermbg=NONE    cterm=NONE
hi menu                     guifg=#000000   guibg=#ff6a6a   guisp=#ff6a6a gui=NONE
hi menu                     ctermfg=NONE    ctermbg=9       cterm=NONE
hi ncursor                  guifg=#000000   guibg=#FFFFFF   guisp=#FFFFFF gui=NONE
hi ncursor                  ctermfg=NONE    ctermbg=15      cterm=NONE
hi Number                   guifg=#ff0000   guibg=NONE      guisp=NONE    gui=NONE
hi Number                   ctermfg=196     ctermbg=NONE    cterm=NONE
hi operatorcurlybrackets    guifg=#5fafff   guibg=NONE      guisp=NONE    gui=bold
hi operatorcurlybrackets    ctermfg=75      ctermbg=NONE    cterm=bold
hi Operator                 guifg=#5fffaf   guibg=NONE      guisp=NONE    gui=NONE
hi Operator                 ctermfg=85      ctermbg=NONE    cterm=NONE
hi PreCondit                guifg=#ff8700   guibg=NONE      guisp=NONE    gui=NONE
hi PreCondit                ctermfg=208     ctermbg=NONE    cterm=NONE
hi PreProc                  guifg=#ff8700   guibg=NONE      guisp=NONE    gui=NONE
hi PreProc                  ctermfg=208     ctermbg=NONE    cterm=NONE
hi pythonbuiltin            guifg=#5181ab   guibg=NONE      guisp=NONE    gui=NONE
hi pythonbuiltin            ctermfg=67      ctermbg=NONE    cterm=NONE
hi pythoncomment            guifg=#5181ab   guibg=NONE      guisp=NONE    gui=italic
hi pythoncomment            ctermfg=67      ctermbg=NONE    cterm=NONE
hi pythonconditional        guifg=#000000   guibg=NONE      guisp=NONE    gui=bold
hi pythonconditional        ctermfg=NONE    ctermbg=NONE    cterm=bold
hi pythonimport             guifg=#894c24   guibg=NONE      guisp=NONE    gui=NONE
hi pythonimport             ctermfg=94      ctermbg=NONE    cterm=NONE
hi pythonoperator           guifg=#000000   guibg=NONE      guisp=NONE    gui=bold
hi pythonoperator           ctermfg=NONE    ctermbg=NONE    cterm=bold
hi pythonprecondit          guifg=#894c24   guibg=NONE      guisp=NONE    gui=NONE
hi pythonprecondit          ctermfg=94      ctermbg=NONE    cterm=NONE
hi pythonrawstring          guifg=#4970cc   guibg=NONE      guisp=NONE    gui=NONE
hi pythonrawstring          ctermfg=68      ctermbg=NONE    cterm=NONE
hi pythonrepeat             guifg=#000000   guibg=NONE      guisp=NONE    gui=bold
hi pythonrepeat             ctermfg=NONE    ctermbg=NONE    cterm=bold
hi pythonstatement          guifg=#0086b5   guibg=NONE      guisp=NONE    gui=NONE
hi pythonstatement          ctermfg=31      ctermbg=NONE    cterm=NONE
hi rcursor                  guifg=#000000   guibg=#00CCFF   guisp=#00CCFF gui=NONE
hi rcursor                  ctermfg=NONE    ctermbg=45      cterm=NONE
hi Repeat                   guifg=#5fffff   guibg=NONE      guisp=NONE    gui=NONE
hi Repeat                   ctermfg=87      ctermbg=NONE    cterm=NONE
hi rubyglobalvariable       guifg=#5f8700   guibg=NONE      guisp=NONE    gui=NONE
hi rubyglobalvariable       ctermfg=64      ctermbg=NONE    cterm=NONE
hi rubypredefinedidentifier guifg=#5f8700   guibg=NONE      guisp=NONE    gui=bold
hi rubypredefinedidentifier ctermfg=64      ctermbg=NONE    cterm=bold
hi SpecialChar              guifg=#87d7ff   guibg=NONE      guisp=NONE    gui=NONE
hi SpecialChar              ctermfg=117     ctermbg=NONE    cterm=NONE
hi SpecialComment           guifg=#87d7ff   guibg=NONE      guisp=NONE    gui=NONE
hi SpecialComment           ctermfg=117     ctermbg=NONE    cterm=NONE
hi Special                  guifg=#87d7ff   guibg=NONE      guisp=NONE    gui=NONE
hi Special                  ctermfg=117     ctermbg=NONE    cterm=NONE
hi Statement                guifg=#ffffff   guibg=NONE      guisp=NONE    gui=bold
hi Statement                ctermfg=15      ctermbg=NONE    cterm=bold
hi StorageClass             guifg=#5fff5f   guibg=NONE      guisp=NONE    gui=NONE
hi StorageClass             ctermfg=83      ctermbg=NONE    cterm=NONE
hi String                   guifg=#ffd700   guibg=NONE      guisp=NONE    gui=NONE
hi String                   ctermfg=220     ctermbg=NONE    cterm=NONE
hi Structure                guifg=#5fff5f   guibg=NONE      guisp=NONE    gui=NONE
hi Structure                ctermfg=83      ctermbg=NONE    cterm=NONE
hi Tag                      guifg=#87d7ff   guibg=NONE      guisp=NONE    gui=NONE
hi Tag                      ctermfg=117     ctermbg=NONE    cterm=NONE
hi titled                   guifg=#ffffff   guibg=#221100   guisp=#221100 gui=NONE
hi titled                   ctermfg=15      ctermbg=52      cterm=NONE
hi Todo                     guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Todo                     ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Typedef                  guifg=#5fff5f   guibg=NONE      guisp=NONE    gui=NONE
hi Typedef                  ctermfg=83      ctermbg=NONE    cterm=NONE
hi Type                     guifg=#5fff5f   guibg=NONE      guisp=NONE    gui=NONE
hi Type                     ctermfg=83      ctermbg=NONE    cterm=NONE
hi Underlined               guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Underlined               ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi Union                    guifg=NONE      guibg=NONE      guisp=NONE    gui=NONE
hi Union                    ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi user1                    guifg=#ffd7af   guibg=#303030   guisp=#303030 gui=bold
hi user1                    ctermfg=223     ctermbg=236     cterm=bold
hi user2                    guifg=#585858   guibg=#303030   guisp=#303030 gui=NONE
hi user2                    ctermfg=240     ctermbg=236     cterm=NONE
"Highlighting for Chromatica
hi Member                   guifg=#00ffff   guibg=NONE      guisp=NONE    gui=NONE
hi Member                   ctermfg=14      ctermbg=NONE    cterm=NONE
hi Variable                 guifg=#c0c0c0   guibg=NONE      guisp=NONE    gui=NONE
hi Variable                 ctermfg=229     ctermbg=NONE    cterm=NONE
hi Namespace                guifg=#bbbb00   guibg=NONE      guisp=NONE    gui=NONE
hi Namespace                ctermfg=11      ctermbg=NONE    cterm=NONE
hi EnumConstant             guifg=#00ff00   guibg=NONE      guisp=NONE    gui=NONE
hi EnumConstant             ctermfg=10      ctermbg=NONE    cterm=NONE
"Highlight groups for taglist plugin
hi MyTagListFileName        guifg=#000000   guibg=#afd7ff   guisp=#afd7ff gui=bold
hi MyTagListFileName        ctermfg=16      ctermbg=153     cterm=NONE
hi MyTagListTagName         guifg=#000000   guibg=#afd7ff   guisp=#afd7ff gui=bold
hi MyTagListTagName         ctermfg=16      ctermbg=153     cterm=NONE
