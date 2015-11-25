set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "whitebox"

hi Comment guifg=#8b8b8b ctermfg=245
hi Constant guifg=#cc006c ctermfg=161
hi Cursor guifg=#ffffff ctermfg=15 guibg=#0066ff ctermbg=27
hi CursorColumn guibg=gray90
hi CursorIM gui=None
hi CursorLine guifg=#00cc66 ctermfg=41 guibg=gray90
hi DiffAdd guibg=lightblue
hi DiffChange guibg=plum1
hi DiffDelete gui=bold guifg=blue guibg=lightcyan
hi DiffText gui=bold guibg=gray90
hi Directory gui=bold guifg=#ec3300 ctermfg=202
hi Error guifg=#339999 ctermfg=66 guibg=gray90
hi ErrorMsg guifg=white guibg=red
hi FoldColumn guifg=darkblue guibg=grey
hi Folded guifg=#efffff ctermfg=15 guibg=#526d8e ctermbg=60
hi Function guifg=#efc21e ctermfg=214
hi Identifier guifg=darkcyan
hi Ignore guifg=white
hi IncSearch gui=reverse guifg=lightblue guibg=red
hi LineNr guifg=#519eff ctermfg=75 
hi MatchParen guibg=cyan
hi ModeMsg gui=bold
hi MoreMsg gui=bold guifg=seagreen
hi NonText gui=bold guifg=blue
hi Normal gui=None guifg=#526d8e ctermfg=60 ctermbg=white
hi Pmenu guibg=#e3e8de ctermbg=7
hi PmenuSbar guibg=grey
hi PmenuSel guibg=#86beda ctermbg=110
hi PmenuThumb gui=reverse
hi PreProc guifg=#d5459c ctermfg=169
hi Question gui=bold guifg=seagreen
hi Search guibg=#aec4e2 ctermbg=152
hi SignColumn guifg=darkblue guibg=grey
hi Special guifg=slateblue
hi SpecialKey guifg=blue
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement gui=bold guifg=#d54271 ctermfg=167
hi StatusLine gui=bold,reverse guifg=#222222 ctermfg=235
hi StatusLineNC gui=reverse
hi String guifg=#ff3100 ctermfg=202
hi TabLine gui=underline guibg=lightgrey
hi TabLineFill gui=reverse
hi TabLineSel gui=bold
hi Title gui=bold guifg=magenta
hi Todo guifg=blue guibg=yellow
hi Type gui=None guifg=#008F0F ctermfg=28
hi Underlined gui=underline guifg=slateblue
hi VertSplit gui=reverse guifg=#c1b6a1 ctermfg=249
hi Visual guibg=#a0b8cc ctermbg=146
hi VisualNOS gui=bold,underline
hi WarningMsg guifg=red
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Number Constant
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link String Constant
hi link Structure Type
hi link Tag Special
hi link Typedef Type

