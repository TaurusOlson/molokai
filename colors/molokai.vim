" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Modifications: Taurus Olson <taurusolson@gmail.com>
" (inspired by Steve Losh's version)
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

" Colors 
let s:molokai_orange = "#FD971F"
let s:molokai_white  = "#F8F8F2"
let s:molokai_black  = "#1A1A1A"
let s:molokai_grey   = "#AAAAAA"
let s:molokai_brown  = "#262626"
let s:molokai_pink   = "#F92672"

function! Colorize(group, fg, bg, gui)
    exe "hi " .a:group. " guifg=" .a:fg. " guibg=".a:bg. " gui="a:gui
endfunction


hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F

" Msg {{{

hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74

" }}}

" Diff {{{

hi DiffAdd                       guibg=#1E0010
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

" }}}

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#960050 guibg=#1E0010
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#666666 guibg=bg
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi Operator        guifg=#F92672

" Completion menu {{{

hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

" }}}


" Tabs {{{

hi TabLine      guibg=bg guifg=#AAAAAA gui=none
hi TabLineSel   guifg=fg guibg=#F92672  gui=bold
hi TabLineFill  guifg=bg guibg=#AAAAAA

" }}}


hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#000000 guibg=#FD971F
" marks column
hi SignColumn      guifg=#A6E22E guibg=#232526

" Special {{{

hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
hi SpecialKey      guifg=#262626               gui=none
hi NonText         guifg=#465457

" }}}

" Spell {{{

if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif

" }}}

call Colorize("Statement", s:molokai_pink, "NONE", "bold")

" Statusline {{{

call Colorize("Statusline", "fg", s:molokai_pink, "bold")
call Colorize("StatuslineNC", "fg", s:molokai_brown, "bold")

" }}}

hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FD971F guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=bg      gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000


call Colorize("Normal"       , s:molokai_white  , s:molokai_black , "none")
call Colorize("Comment"      , s:molokai_grey   , "NONE"          , "none")
call Colorize("CursorLine"   , "NONE"           , s:molokai_brown , "none")
call Colorize("CursorColumn" , "NONE"           , s:molokai_brown , "none")
call Colorize("ColorColumn"  , "NONE"           , s:molokai_brown , "none")
call Colorize("LineNr"       , s:molokai_grey   , "bg"            , "none")
call Colorize("CursorLineNr" , s:molokai_orange , s:molokai_brown , "none")



" vim: set fdm=marker:"
