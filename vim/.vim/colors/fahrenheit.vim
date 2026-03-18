" fahrenheit.vim -- Vim color scheme.
" Author:      fcpg (n/a)
" Webpage:     https://github.com/fcpg
" Description: Dark, warm base16 theme for 256-color terminals

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "fahrenheit"

if &t_Co >= 256 || has("gui_running")
    "hi Normal ctermbg=16 ctermfg=231 cterm=NONE guibg=#000000 guifg=#ffffff gui=NONE
    hi Normal guibg=NONE ctermbg=NONE
    set background=dark
    hi NonText ctermfg=88 cterm=NONE guifg=#870000 gui=NONE
    hi Comment ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi Constant ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi Error ctermbg=88 ctermfg=230 cterm=NONE guibg=#870000 guifg=#ffffd7 gui=NONE
    hi Identifier ctermfg=248 cterm=NONE guifg=#a8a8a8 gui=NONE
    hi Ignore ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi PreProc ctermfg=215 cterm=NONE guifg=#ffaf5f gui=NONE
    hi Special ctermfg=215 cterm=NONE guifg=#ffaf5f gui=NONE
    hi Statement ctermfg=166 cterm=NONE guifg=#d75f00 gui=NONE
    hi String ctermfg=180 cterm=NONE guifg=#d7af87 gui=NONE
    hi Number ctermfg=67 cterm=NONE guifg=#5f87af gui=NONE
    hi Todo ctermfg=231 cterm=bold guifg=#ffffff gui=bold
    hi Type ctermfg=223 cterm=NONE guifg=#ffd7af gui=NONE
    hi! link Character Constant
    hi! link Float Number
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Label Statement
    hi! link Keyword Statement
    hi! link Exception Statement
    hi! link Include PreProc
    hi! link Define PreProc
    hi! link Macro PreProc
    hi! link PreCondit PreProc
    hi! link StorageClass Type
    hi! link Structure Type
    hi! link Typedef Type
    hi! link Tag Special
    hi! link SpecialChar Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi Underlined ctermbg=235 ctermfg=221 cterm=NONE guibg=#262626 guifg=#ffd75f gui=NONE
    hi StatusLine ctermfg=173 cterm=NONE guibg=#f0f0b0 guifg=#262626 gui=NONE
    hi StatusLineNC ctermfg=235 cterm=NONE guibg=NONE guifg=#f0f0f0 gui=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi VertSplit ctermfg=235 cterm=NONE guifg=#262626 gui=NONE
    hi TabLine ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi TabLineFill ctermbg=235 ctermfg=231 cterm=NONE guibg=#262626 guifg=#ffffff gui=NONE
    hi TabLineSel ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi Title ctermfg=230 cterm=bold guifg=#ffffd7 gui=bold
    hi CursorLine ctermbg=235 ctermfg=NONE cterm=NONE guibg=#262626 guifg=NONE gui=NONE
    hi LineNr ctermfg=137 cterm=NONE guifg=#af875f gui=NONE
    hi CursorLineNr ctermfg=223 cterm=NONE guifg=#ffd7af gui=NONE
    hi qfLineNr ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi helpLeadBlank ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi helpNormal ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi Visual ctermbg=215 ctermfg=16 cterm=NONE guibg=#ffaf5f guifg=#000000 gui=NONE
    hi VisualNOS ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi Pmenu ctermbg=235 ctermfg=248 cterm=NONE guibg=#262626 guifg=#a8a8a8 gui=NONE
    hi PmenuSbar ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi PmenuSel ctermbg=235 ctermfg=221 cterm=NONE guibg=#262626 guifg=#ffd75f gui=NONE
    hi PmenuThumb ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi FoldColumn ctermfg=235 cterm=NONE guifg=#262626 gui=NONE
    hi Folded ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi WildMenu ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi SpecialKey ctermfg=67 cterm=NONE guifg=#5f87af gui=NONE
    hi DiffAdd ctermbg=235 ctermfg=230 cterm=NONE guibg=#262626 guifg=#ffffd7 gui=NONE
    hi DiffChange ctermbg=235 ctermfg=248 cterm=NONE guibg=#262626 guifg=#a8a8a8 gui=NONE
    hi DiffDelete ctermfg=88 cterm=NONE guifg=#870000 gui=NONE
    hi DiffText ctermbg=235 ctermfg=173 cterm=NONE guibg=#262626 guifg=#d7875f gui=NONE
    hi IncSearch ctermbg=166 ctermfg=16 cterm=NONE guibg=#d75f00 guifg=#000000 gui=NONE
    hi Search ctermbg=180 ctermfg=16 cterm=NONE guibg=#d7af87 guifg=#000000 gui=NONE
    hi! link QuickFixLine Search
    hi Directory ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi MatchParen ctermbg=95 ctermfg=221 cterm=bold guibg=#875f5f guifg=#ffd75f gui=bold
    hi SpellBad ctermbg=NONE ctermfg=88 cterm=NONE guibg=NONE guifg=#870000 gui=NONE guisp=#870000
    hi SpellCap ctermbg=NONE ctermfg=221 cterm=NONE guibg=NONE guifg=#ffd75f gui=NONE guisp=#ffd75f
    hi SpellLocal ctermbg=NONE ctermfg=88 cterm=NONE guibg=NONE guifg=#870000 gui=NONE guisp=#870000
    hi SpellRare ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#d7af87 gui=NONE guisp=#d7af87
    hi ColorColumn ctermfg=235 cterm=NONE guifg=#262626 gui=NONE
    hi signColumn ctermfg=230 cterm=NONE guifg=#ffffd7 gui=NONE
    hi ErrorMsg ctermbg=88 ctermfg=231 cterm=NONE guibg=#870000 guifg=#ffffff gui=NONE
    hi ModeMsg ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi MoreMsg ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi Question ctermfg=230 cterm=NONE guifg=#ffffd7 gui=NONE
    hi WarningMsg ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi Cursor ctermbg=166 ctermfg=16 cterm=NONE guibg=#d75f00 guifg=#000000 gui=NONE
    hi CursorColumn ctermbg=235 ctermfg=NONE cterm=NONE guibg=#262626 guifg=NONE gui=NONE
    hi Function ctermfg=222 cterm=NONE guifg=#ffd787 gui=NONE
    hi Operator ctermfg=173 cterm=NONE guifg=#d7875f gui=NONE
    hi Delimiter ctermfg=173 cterm=NONE guifg=#d7875f gui=NONE
    hi Boolean ctermfg=67 cterm=NONE guifg=#5f87af gui=NONE
    hi VimIsCommand ctermfg=173 cterm=NONE guifg=#d7875f gui=NONE
    hi VimFunction ctermfg=231 cterm=bold guifg=#ffffff gui=bold
    hi! link VimFuncKey VimCommand
    hi! link VimSubstPat VimString
    hi VimSubstRep4 ctermbg=235 ctermfg=180 cterm=NONE guibg=#262626 guifg=#d7af87 gui=NONE
    hi VimMapLhs ctermbg=235 ctermfg=231 cterm=NONE guibg=#262626 guifg=#ffffff gui=NONE
    hi javaScriptObjectKey ctermfg=215 cterm=NONE guifg=#ffaf5f gui=NONE
    hi javaScriptFunctionKey ctermfg=88 cterm=NONE guifg=#870000 gui=NONE
    hi htmlItalic ctermfg=173 cterm=NONE guifg=#d7875f gui=NONE
    hi markdownLinkTextDelimiter ctermfg=173 cterm=NONE guifg=#d7875f gui=NONE
    hi markdownLinkDelimiter ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi markdownUrl ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi markdownCodeBlock ctermfg=180 cterm=NONE guifg=#d7af87 gui=NONE
    hi markdownCode ctermfg=180 cterm=NONE guifg=#d7af87 gui=NONE
    hi manOptionDesc ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi manLongOptionDesc ctermfg=215 cterm=NONE guifg=#ffaf5f gui=NONE
    hi CtrlPNoEntries ctermfg=88 cterm=NONE guifg=#870000 gui=NONE
    hi CtrlPMatch ctermfg=221 cterm=NONE guifg=#ffd75f gui=NONE
    hi CtrlPLinePre ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi CtrlPPrtBase ctermfg=95 cterm=NONE guifg=#875f5f gui=NONE
    hi CtrlPPrtText ctermfg=231 cterm=NONE guifg=#ffffff gui=NONE
    hi CtrlPPtrCursor ctermfg=166 cterm=NONE guifg=#d75f00 gui=NONE
    hi CtrlPBufferInd ctermfg=223 cterm=NONE guifg=#ffd7af gui=NONE
    hi CtrlPBufferVis ctermfg=215 cterm=NONE guifg=#ffaf5f gui=NONE
    hi CtrlPBufferNr ctermfg=67 cterm=NONE guifg=#5f87af gui=NONE
"elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
"    set t_Co=16
"    "hi Normal ctermbg=black ctermfg=white cterm=NONE
"    hi Normal guibg=NONE ctermbg=NONE
"    set background=dark
"    hi NonText ctermfg=darkred cterm=NONE
"    hi Comment ctermfg=darkmagenta cterm=NONE
"    hi Constant ctermfg=white cterm=NONE
"    hi Error ctermbg=darkred ctermfg=white cterm=NONE
"    hi Identifier ctermfg=gray cterm=NONE
"    hi Ignore ctermfg=darkmagenta cterm=NONE
"    hi PreProc ctermfg=darkyellow cterm=NONE
"    hi Special ctermfg=darkyellow cterm=NONE
"    hi Statement ctermfg=red cterm=NONE
"    hi String ctermfg=darkyellow cterm=NONE
"    hi Number ctermfg=blue cterm=NONE
"    hi Todo ctermfg=white cterm=bold
"    hi Type ctermfg=white cterm=NONE
"    hi link Character Constant
"    hi link Float Number
"    hi link Conditional Statement
"    hi link Repeat Statement
"    hi link Label Statement
"    hi link Keyword Statement
"    hi link Exception Statement
"    hi link Include PreProc
"    hi link Define PreProc
"    hi link Macro PreProc
"    hi link PreCondit PreProc
"    hi link StorageClass Type
"    hi link Structure Type
"    hi link Typedef Type
"    hi link Tag Special
"    hi link SpecialChar Special
"    hi link SpecialComment Special
"    hi link Debug Special
"    hi Underlined ctermbg=darkgray ctermfg=yellow cterm=NONE
"    hi StatusLine ctermfg=darkyellow cterm=NONE
"    hi StatusLineNC ctermfg=darkgray cterm=NONE
"    hi link StatusLineTerm StatusLine
"    hi link StatusLineTermNC StatusLineNC
"    hi VertSplit ctermfg=darkgray cterm=NONE
"    hi TabLine ctermfg=darkmagenta cterm=NONE
"    hi TabLineFill ctermbg=darkgray ctermfg=white cterm=NONE
"    hi TabLineSel ctermfg=yellow cterm=NONE
"    hi Title ctermfg=white cterm=bold
"    hi CursorLine ctermbg=darkgray ctermfg=NONE cterm=NONE
"    hi LineNr ctermfg=darkyellow cterm=NONE
"    hi CursorLineNr ctermfg=white cterm=NONE
"    hi qfLineNr ctermfg=darkmagenta cterm=NONE
"    hi helpLeadBlank ctermfg=white cterm=NONE
"    hi helpNormal ctermfg=white cterm=NONE
"    hi Visual ctermbg=darkyellow ctermfg=black cterm=NONE
"    hi VisualNOS ctermfg=white cterm=NONE
"    hi Pmenu ctermbg=darkgray ctermfg=gray cterm=NONE
"    hi PmenuSbar ctermfg=white cterm=NONE
"    hi PmenuSel ctermbg=darkgray ctermfg=yellow cterm=NONE
"    hi PmenuThumb ctermfg=white cterm=NONE
"    hi FoldColumn ctermfg=darkgray cterm=NONE
"    hi Folded ctermfg=darkmagenta cterm=NONE
"    hi WildMenu ctermfg=yellow cterm=NONE
"    hi SpecialKey ctermfg=blue cterm=NONE
"    hi DiffAdd ctermbg=darkgray ctermfg=white cterm=NONE
"    hi DiffChange ctermbg=darkgray ctermfg=gray cterm=NONE
"    hi DiffDelete ctermfg=darkred cterm=NONE
"    hi DiffText ctermbg=darkgray ctermfg=darkyellow cterm=NONE
"    hi IncSearch ctermbg=red ctermfg=black cterm=NONE
"    hi Search ctermbg=darkyellow ctermfg=black cterm=NONE
"    hi link QuickFixLine Search
"    hi Directory ctermfg=white cterm=NONE
"    hi MatchParen ctermbg=darkmagenta ctermfg=yellow cterm=bold
"    hi SpellBad ctermbg=NONE ctermfg=darkred cterm=NONE
"    hi SpellCap ctermbg=NONE ctermfg=yellow cterm=NONE
"    hi SpellLocal ctermbg=NONE ctermfg=darkred cterm=NONE
"    hi SpellRare ctermbg=NONE ctermfg=darkyellow cterm=NONE
"    hi ColorColumn ctermfg=darkgray cterm=NONE
"    hi signColumn ctermfg=white cterm=NONE
"    hi ErrorMsg ctermbg=darkred ctermfg=white cterm=NONE
"    hi ModeMsg ctermfg=yellow cterm=NONE
"    hi MoreMsg ctermfg=yellow cterm=NONE
"    hi Question ctermfg=white cterm=NONE
"    hi WarningMsg ctermfg=yellow cterm=NONE
"    hi Cursor ctermbg=red ctermfg=black cterm=NONE
"    hi CursorColumn ctermbg=darkgray ctermfg=NONE cterm=NONE
"    hi Function ctermfg=yellow cterm=NONE
"    hi Operator ctermfg=darkyellow cterm=NONE
"    hi Delimiter ctermfg=darkyellow cterm=NONE
"    hi Boolean ctermfg=blue cterm=NONE
"    hi VimIsCommand ctermfg=darkyellow cterm=NONE
"    hi VimFunction ctermfg=white cterm=bold
"    hi link VimFuncKey VimCommand
"    hi link VimSubstPat VimString
"    hi VimSubstRep4 ctermbg=darkgray ctermfg=darkyellow cterm=NONE
"    hi VimMapLhs ctermbg=darkgray ctermfg=white cterm=NONE
"    hi javaScriptObjectKey ctermfg=darkyellow cterm=NONE
"    hi javaScriptFunctionKey ctermfg=darkred cterm=NONE
"    hi htmlItalic ctermfg=darkyellow cterm=NONE
"    hi markdownLinkTextDelimiter ctermfg=darkyellow cterm=NONE
"    hi markdownLinkDelimiter ctermfg=darkmagenta cterm=NONE
"    hi markdownUrl ctermfg=darkmagenta cterm=NONE
"    hi markdownCodeBlock ctermfg=darkyellow cterm=NONE
"    hi markdownCode ctermfg=darkyellow cterm=NONE
"    hi manOptionDesc ctermfg=yellow cterm=NONE
"    hi manLongOptionDesc ctermfg=darkyellow cterm=NONE
"    hi CtrlPNoEntries ctermfg=darkred cterm=NONE
"    hi CtrlPMatch ctermfg=yellow cterm=NONE
"    hi CtrlPLinePre ctermfg=darkmagenta cterm=NONE
"    hi CtrlPPrtBase ctermfg=darkmagenta cterm=NONE
"    hi CtrlPPrtText ctermfg=white cterm=NONE
"    hi CtrlPPtrCursor ctermfg=red cterm=NONE
"    hi CtrlPBufferInd ctermfg=white cterm=NONE
"    hi CtrlPBufferVis ctermfg=darkyellow cterm=NONE
"    hi CtrlPBufferNr ctermfg=blue cterm=NONE
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
