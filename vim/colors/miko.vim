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

function! s:hi(group, ...)
    let l:fg = get(a:, 1, -1)
    let l:bg = get(a:, 2, -1)
    let l:attr = get(a:, 3, "")
    " Full 256 colour table
    let l:gui_colours = {
        \ '0':   '#000000', '1':   '#800000', '2':   '#008000', '3':   '#808000', '4':   '#000080',
        \ '5':   '#800080', '6':   '#008080', '7':   '#c0c0c0', '8':   '#808080', '9':   '#ff0000',
        \ '10':  '#00ff00', '11':  '#ffff00', '12':  '#0000ff', '13':  '#ff00ff', '14':  '#00ffff',
        \ '15':  '#ffffff', '16':  '#000000', '17':  '#00005f', '18':  '#000087', '19':  '#0000af',
        \ '20':  '#0000df', '21':  '#0000ff', '22':  '#005f00', '23':  '#005f5f', '24':  '#005f87',
        \ '25':  '#005faf', '26':  '#005fdf', '27':  '#005fff', '28':  '#008700', '29':  '#00875f',
        \ '30':  '#008787', '31':  '#0087af', '32':  '#0087df', '33':  '#0087ff', '34':  '#00af00',
        \ '35':  '#00af5f', '36':  '#00af87', '37':  '#00afaf', '38':  '#00afdf', '39':  '#00afff',
        \ '40':  '#00df00', '41':  '#00df5f', '42':  '#00df87', '43':  '#00dfaf', '44':  '#00dfdf',
        \ '45':  '#00dfff', '46':  '#00ff00', '47':  '#00ff5f', '48':  '#00ff87', '49':  '#00ffaf',
        \ '50':  '#00ffdf', '51':  '#00ffff', '52':  '#5f0000', '53':  '#5f005f', '54':  '#5f0087',
        \ '55':  '#5f00af', '56':  '#5f00df', '57':  '#5f00ff', '58':  '#5f5f00', '59':  '#5f5f5f',
        \ '60':  '#5f5f87', '61':  '#5f5faf', '62':  '#5f5fdf', '63':  '#5f5fff', '64':  '#5f8700',
        \ '65':  '#5f875f', '66':  '#5f8787', '67':  '#5f87af', '68':  '#5f87df', '69':  '#5f87ff',
        \ '70':  '#5faf00', '71':  '#5faf5f', '72':  '#5faf87', '73':  '#5fafaf', '74':  '#5fafdf',
        \ '75':  '#5fafff', '76':  '#5fdf00', '77':  '#5fdf5f', '78':  '#5fdf87', '79':  '#5fdfaf',
        \ '80':  '#5fdfdf', '81':  '#5fdfff', '82':  '#5fff00', '83':  '#5fff5f', '84':  '#5fff87',
        \ '85':  '#5fffaf', '86':  '#5fffdf', '87':  '#5fffff', '88':  '#870000', '89':  '#87005f',
        \ '90':  '#870087', '91':  '#8700af', '92':  '#8700df', '93':  '#8700ff', '94':  '#875f00',
        \ '95':  '#875f5f', '96':  '#875f87', '97':  '#875faf', '98':  '#875fdf', '99':  '#875fff',
        \ '100': '#878700', '101': '#87875f', '102': '#878787', '103': '#8787af', '104': '#8787df',
        \ '105': '#8787ff', '106': '#87af00', '107': '#87af5f', '108': '#87af87', '109': '#87afaf',
        \ '110': '#87afdf', '111': '#87afff', '112': '#87df00', '113': '#87df5f', '114': '#87df87',
        \ '115': '#87dfaf', '116': '#87dfdf', '117': '#87dfff', '118': '#87ff00', '119': '#87ff5f',
        \ '120': '#87ff87', '121': '#87ffaf', '122': '#87ffdf', '123': '#87ffff', '124': '#af0000',
        \ '125': '#af005f', '126': '#af0087', '127': '#af00af', '128': '#af00df', '129': '#af00ff',
        \ '130': '#af5f00', '131': '#af5f5f', '132': '#af5f87', '133': '#af5faf', '134': '#af5fdf',
        \ '135': '#af5fff', '136': '#af8700', '137': '#af875f', '138': '#af8787', '139': '#af87af',
        \ '140': '#af87df', '141': '#af87ff', '142': '#afaf00', '143': '#afaf5f', '144': '#afaf87',
        \ '145': '#afafaf', '146': '#afafdf', '147': '#afafff', '148': '#afdf00', '149': '#afdf5f',
        \ '150': '#afdf87', '151': '#afdfaf', '152': '#afdfdf', '153': '#afdfff', '154': '#afff00',
        \ '155': '#afff5f', '156': '#afff87', '157': '#afffaf', '158': '#afffdf', '159': '#afffff',
        \ '160': '#df0000', '161': '#df005f', '162': '#df0087', '163': '#df00af', '164': '#df00df',
        \ '165': '#df00ff', '166': '#df5f00', '167': '#df5f5f', '168': '#df5f87', '169': '#df5faf',
        \ '170': '#df5fdf', '171': '#df5fff', '172': '#df8700', '173': '#df875f', '174': '#df8787',
        \ '175': '#df87af', '176': '#df87df', '177': '#df87ff', '178': '#dfaf00', '179': '#dfaf5f',
        \ '180': '#dfaf87', '181': '#dfafaf', '182': '#dfafdf', '183': '#dfafff', '184': '#dfdf00',
        \ '185': '#dfdf5f', '186': '#dfdf87', '187': '#dfdfaf', '188': '#dfdfdf', '189': '#dfdfff',
        \ '190': '#dfff00', '191': '#dfff5f', '192': '#dfff87', '193': '#dfffaf', '194': '#dfffdf',
        \ '195': '#dfffff', '196': '#ff0000', '197': '#ff005f', '198': '#ff0087', '199': '#ff00af',
        \ '200': '#ff00df', '201': '#ff00ff', '202': '#ff5f00', '203': '#ff5f5f', '204': '#ff5f87',
        \ '205': '#ff5faf', '206': '#ff5fdf', '207': '#ff5fff', '208': '#ff8700', '209': '#ff875f',
        \ '210': '#ff8787', '211': '#ff87af', '212': '#ff87df', '213': '#ff87ff', '214': '#ffaf00',
        \ '215': '#ffaf5f', '216': '#ffaf87', '217': '#ffafaf', '218': '#ffafdf', '219': '#ffafff',
        \ '220': '#ffdf00', '221': '#ffdf5f', '222': '#ffdf87', '223': '#ffdfaf', '224': '#ffdfdf',
        \ '225': '#ffdfff', '226': '#ffff00', '227': '#ffff5f', '228': '#ffff87', '229': '#ffffaf',
        \ '230': '#ffffdf', '231': '#ffffff', '232': '#080808', '233': '#121212', '234': '#1c1c1c',
        \ '235': '#262626', '236': '#303030', '237': '#3a3a3a', '238': '#444444', '239': '#4e4e4e',
        \ '240': '#585858', '241': '#606060', '242': '#666666', '243': '#767676', '244': '#808080',
        \ '245': '#8a8a8a', '246': '#949494', '247': '#9e9e9e', '248': '#a8a8a8', '249': '#b2b2b2',
        \ '250': '#bcbcbc', '251': '#c6c6c6', '252': '#d0d0d0', '253': '#dadada', '254': '#e4e4e4',
        \ '255': '#eeeeee',
        \}
    exec "hi clear " . a:group
    if l:fg != -1
        exec "hi " . a:group . " guifg=" . l:gui_colours[l:fg] . " ctermfg=" . l:fg
    endif
    if l:bg != -1
        exec "hi " . a:group . " guibg=" . l:gui_colours[l:bg] . " ctermbg=" . l:bg
    endif
    if l:attr != ""
        exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
    endif
endfunction

"Syntastic Highlight Groups
call s:hi("SyntasticError", 88)
call s:hi("SyntasticWarning", 94)
call s:hi("SyntasticStyleError", 88)
call s:hi("SyntasticStyleWarning", 94)

"OverLength highlight group
call s:hi("OverLength", -1, 52)

call s:hi("Normal", 153, 235)
call s:hi("ColorColumn", -1, 235)
call s:hi("Cursor", 15, 82)
call s:hi("CursorIM", 232, 118)
call s:hi("CursorColumn", -1, 234)
call s:hi("CursorLine", -1, 118)
call s:hi("CursorLineNR", 47, 24)
call s:hi("DiffAdd", 253, 21)
call s:hi("DiffChange", 253, 30)
call s:hi("DiffDelete", 39, 238)
call s:hi("DiffText", 238, 39)
call s:hi("ErrorMsg", 124)
call s:hi("Error")
call s:hi("LineNr", 188, 24)
call s:hi("VertSplit", 188, 24)
call s:hi("Folded", 188, 26)
call s:hi("FoldColumn", 188, 24)
call s:hi("SignColumn")
call s:hi("IncSearch", 15, 26)
call s:hi("MatchParen", -1, -1, "inverse")
call s:hi("ModeMsg")
call s:hi("MoreMsg")
call s:hi("NonText", 188)
call s:hi("PMenu", 52, 226)
call s:hi("PMenuSbar", 226, 52)
call s:hi("PMenuSel", 22, 226)
call s:hi("PMenuThumb", 129, 226)
call s:hi("Question")
call s:hi("Search", -1, -1, "inverse")
call s:hi("SpecialKey")
call s:hi("SpellBad", -1, -1, "underline,bold")
call s:hi("SpellCap", -1, -1, "underline")
call s:hi("SpellRare", -1, -1, "inverse,bold,underline")
call s:hi("SpellLocal", -1, -1, "underline,bold,italic")
call s:hi("StatusLine", 16, 153)
call s:hi("StatusLineNC", 188, 24)
call s:hi("TabLine", 188, 24)
call s:hi("TabLineFill", 188, 24)
call s:hi("TabLineSel", 232, 153, "bold")
call s:hi("Title", 188, 24)
call s:hi("Visual", 232, 153)
call s:hi("VisualNOS", -1, -1)
call s:hi("WarningMsg", -1, -1)
call s:hi("WildMenu", -1, -1)
call s:hi("Boolean", 15, -1)
call s:hi("Character", 196, -1)
call s:hi("cif0", 7, -1)
call s:hi("Comment", 76, -1)
call s:hi("Conditional", 87, -1)
call s:hi("Constant", 201, -1)
call s:hi("CTagsClass", -1, -1)
call s:hi("CTagsGlobalConstant", -1, -1)
call s:hi("CTagsGlobalVariable", -1, -1)
call s:hi("CTagsImport", -1, -1)
call s:hi("CTagsMember", -1, -1)
call s:hi("Debug", 117, -1)
call s:hi("DefinedName", -1, -1)
call s:hi("Define", 208, -1)
call s:hi("Delimiter", 107, -1)
call s:hi("Directory", -1, -1)
call s:hi("EnumerationName", -1, -1)
call s:hi("EnumerationValue", -1, -1)
call s:hi("Exception", 0, 196)
call s:hi("Float", 196, -1)
call s:hi("Function", 75, -1)
call s:hi("htmlh2", 15, 52, "bold")
call s:hi("htmllink", 11, -1)
call s:hi("icursor", -1, 11)
call s:hi("Identifier", 184, -1)
call s:hi("Ignore", -1, -1)
call s:hi("Include", 208, -1)
call s:hi("Keyword", 83, -1)
call s:hi("Label", 87, -1)
call s:hi("lcursor", 232, 118)
call s:hi("LocalVariable", -1, -1)
call s:hi("Macro", 208, -1)
call s:hi("menu", -1, 9)
call s:hi("ncursor", -1, 15)
call s:hi("Number", 196, -1)
call s:hi("operatorcurlybrackets", 75, -1)
call s:hi("Operator", 85, -1)
call s:hi("PreCondit", 208, -1)
call s:hi("PreProc", 208, -1)
call s:hi("pythonbuiltin", 67, -1)
call s:hi("pythoncomment", 67, -1)
call s:hi("pythonconditional", -1, -1)
call s:hi("pythonimport", 94, -1)
call s:hi("pythonoperator", -1, -1)
call s:hi("pythonprecondit", 94, -1)
call s:hi("pythonrawstring", 68, -1)
call s:hi("pythonrepeat", -1, -1)
call s:hi("pythonstatement", 31, -1)
call s:hi("rcursor", -1, 45)
call s:hi("Repeat", 87, -1)
call s:hi("rubyglobalvariable", 64, -1)
call s:hi("rubypredefinedidentifier", 64, -1)
call s:hi("SpecialChar", 117, -1)
call s:hi("SpecialComment", 117, -1)
call s:hi("Special", 117, -1)
call s:hi("Statement", 15, -1)
call s:hi("StorageClass", 83, -1)
call s:hi("String", 220, -1)
call s:hi("Structure", 83, -1)
call s:hi("Tag", 117, -1)
call s:hi("titled", 15, 52)
call s:hi("Todo", -1, -1)
call s:hi("Typedef", 83, -1)
call s:hi("Type", 83, -1)
call s:hi("Underlined", -1, -1)
call s:hi("Union", -1, -1)
call s:hi("user1", 223, 236, "bold")
call s:hi("user2", 240, 236)
"Highlighting for Chromatica
call s:hi("Member", 14, -1)
call s:hi("Variable", 229, -1)
call s:hi("Namespace", 11, -1)
call s:hi("EnumConstant", 10, -1)
"Highlight groups for taglist plugin
call s:hi("MyTagListFileName", 16, 153)
call s:hi("MyTagListTagName", 16, 153)
