" fahrenheit.vim -- Vim color scheme.
" Author:      fcpg (n/a)
" Webpage:     https://github.com/fcpg
" Description: Dark, warm base16 theme for 256-color terminals

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "fahrenheit"

hi Normal ctermbg=none ctermfg=15 cterm=NONE
set background=dark
hi NonText ctermbg=none ctermfg=88 cterm=NONE
hi Comment ctermbg=none ctermfg=95 cterm=NONE
hi Constant ctermbg=none ctermfg=15 cterm=NONE
hi Error ctermbg=88 ctermfg=230 cterm=NONE
hi Identifier ctermbg=none ctermfg=248 cterm=NONE
hi Ignore ctermbg=none ctermfg=95 cterm=NONE
hi PreProc ctermbg=none ctermfg=215 cterm=NONE
hi Special ctermbg=none ctermfg=215 cterm=NONE
hi Statement ctermbg=none ctermfg=166 cterm=NONE
hi String ctermbg=none ctermfg=180 cterm=NONE
hi Number ctermbg=none ctermfg=67 cterm=NONE
hi Todo ctermbg=none ctermfg=15 cterm=bold
hi Type ctermbg=none ctermfg=223 cterm=NONE
hi Underlined ctermbg=235 ctermfg=221 cterm=NONE
hi StatusLine ctermbg=none ctermfg=173 cterm=NONE
hi StatusLineNC ctermbg=none ctermfg=235 cterm=NONE
hi VertSplit ctermbg=none ctermfg=235 cterm=NONE
hi TabLine ctermbg=none ctermfg=95 cterm=NONE
hi TabLineFill ctermbg=235 ctermfg=15 cterm=NONE
hi TabLineSel ctermbg=none ctermfg=221 cterm=NONE
hi Title ctermbg=none ctermfg=230 cterm=NONE
hi CursorLine ctermbg=235 ctermfg=NONE cterm=NONE
hi LineNr ctermbg=none ctermfg=137 cterm=NONE
hi CursorLineNr ctermbg=none ctermfg=223 cterm=NONE
hi qfLineNr ctermbg=none ctermfg=95 cterm=NONE
hi helpLeadBlank ctermbg=none ctermfg=15 cterm=NONE
hi helpNormal ctermbg=none ctermfg=15 cterm=NONE
hi Visual ctermbg=215 ctermfg=0 cterm=NONE
hi VisualNOS ctermbg=none ctermfg=15 cterm=NONE
hi Pmenu ctermbg=235 ctermfg=248 cterm=NONE
hi PmenuSbar ctermbg=none ctermfg=15 cterm=NONE
hi PmenuSel ctermbg=235 ctermfg=221 cterm=NONE
hi PmenuThumb ctermbg=none ctermfg=15 cterm=NONE
hi FoldColumn ctermbg=none ctermfg=235 cterm=NONE
hi Folded ctermbg=none ctermfg=95 cterm=NONE
hi WildMenu ctermbg=none ctermfg=221 cterm=NONE
hi SpecialKey ctermbg=none ctermfg=67 cterm=NONE
hi DiffAdd ctermbg=235 ctermfg=230 cterm=NONE
hi DiffChange ctermbg=235 ctermfg=248 cterm=NONE
hi DiffDelete ctermbg=none ctermfg=88 cterm=NONE
hi DiffText ctermbg=235 ctermfg=173 cterm=NONE
hi IncSearch ctermbg=166 ctermfg=0 cterm=NONE
hi Search ctermbg=180 ctermfg=0 cterm=NONE 
hi Directory ctermbg=none ctermfg=15 cterm=NONE
hi MatchParen ctermbg=95 ctermfg=221 cterm=bold
hi SpellBad ctermbg=NONE ctermfg=88 cterm=NONE
hi SpellCap ctermbg=NONE ctermfg=221 cterm=NONE
hi SpellLocal ctermbg=NONE ctermfg=88 cterm=NONE
hi SpellRare ctermbg=NONE ctermfg=180 cterm=NONE
hi ColorColumn ctermbg=none ctermfg=235 cterm=NONE
hi signColumn ctermbg=none ctermfg=230 cterm=NONE
hi ErrorMsg ctermbg=88 ctermfg=15 cterm=NONE
hi ModeMsg ctermbg=none ctermfg=221 cterm=NONE
hi MoreMsg ctermbg=none ctermfg=221 cterm=NONE
hi Question ctermbg=none ctermfg=230 cterm=NONE
hi WarningMsg ctermbg=none ctermfg=221 cterm=NONE
hi Cursor ctermbg=166 ctermfg=0 cterm=NONE
hi CursorColumn ctermbg=235 ctermfg=NONE cterm=NONE
hi Function ctermbg=none ctermfg=222 cterm=NONE
hi Operator ctermbg=none ctermfg=173 cterm=NONE
hi Delimiter ctermbg=none ctermfg=173 cterm=NONE
hi Boolean ctermbg=none ctermfg=67 cterm=NONE
hi VimIsCommand ctermbg=none ctermfg=173 cterm=NONE
hi VimFunction ctermbg=none ctermfg=15 cterm=bold
hi! link VimFuncKey VimCommand
hi! link VimSubstPat VimString
hi VimSubstRep4 ctermbg=235 ctermfg=180 cterm=NONE
hi VimMapLhs ctermbg=235 ctermfg=15 cterm=NONE
hi javaScriptObjectKey ctermbg=none ctermfg=215 cterm=NONE
hi javaScriptFunctionKey ctermbg=none ctermfg=88 cterm=NONE
hi htmlItalic ctermbg=none ctermfg=173 cterm=NONE
hi markdownLinkTextDelimiter ctermbg=none ctermfg=173 cterm=NONE
hi markdownLinkDelimiter ctermbg=none ctermfg=95 cterm=NONE
hi markdownUrl ctermbg=none ctermfg=95 cterm=NONE
hi markdownCodeBlock ctermbg=none ctermfg=180 cterm=NONE
hi markdownCode ctermbg=none ctermfg=180 cterm=NONE
hi manOptionDesc ctermbg=none ctermfg=221 cterm=NONE
hi manLongOptionDesc ctermbg=none ctermfg=215 cterm=NONE
hi CtrlPNoEntries ctermbg=none ctermfg=88 cterm=NONE
hi CtrlPMatch ctermbg=none ctermfg=221 cterm=NONE
hi CtrlPLinePre ctermbg=none ctermfg=95 cterm=NONE
hi CtrlPPrtBase ctermbg=none ctermfg=95 cterm=NONE
hi CtrlPPrtText ctermbg=none ctermfg=15 cterm=NONE
hi CtrlPPtrCursor ctermbg=none ctermfg=166 cterm=NONE
hi CtrlPBufferInd ctermbg=none ctermfg=223 cterm=NONE
hi CtrlPBufferVis ctermbg=none ctermfg=215 cterm=NONE 
hi CtrlPBufferNr ctermbg=none ctermfg=67 cterm=NONE
