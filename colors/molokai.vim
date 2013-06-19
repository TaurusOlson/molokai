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
let s:molokai_orange    = "#FD971F"
let s:molokai_white     = "#F8F8F2"
let s:molokai_black     = "#1A1A1A"
let s:molokai_grey      = "#AAAAAA"
let s:molokai_dark_grey = "#555555"
let s:molokai_brown     = "#262626"
let s:molokai_pink      = "#F92672"
let s:molokai_yellow    = "#E6DB74"
let s:molokai_blue      = "#66D9EF"

function! Colorize(group, fg, bg, gui)
    exe "hi " .a:group. " guifg=" .a:fg. " guibg=".a:bg. " gui="a:gui
endfunction


call Colorize("Character"   , s:molokai_yellow , "NONE"    , "none")
call Colorize("String"      , s:molokai_yellow , "NONE"    , "none")
call Colorize("Boolean"     , "#AE81FF"        , "NONE"    , "none")
call Colorize("Number"      , "#AE81FF"        , "NONE"    , "none")
call Colorize("Conditional" , s:molokai_orange , "NONE"    , "bold")
call Colorize("Constant"    , "#AE81FF"        , "NONE"    , "bold")
call Colorize("Cursor"      , "#000000"        , "#F8F8F0" , "bold")
call Colorize("Debug"       , "#BCA3A3"        , "NONE"    , "bold")
call Colorize("Define"      , s:molokai_blue   , "NONE"    , "bold")
call Colorize("Delimiter"   , "#8F8F8F"        , "NONE"    , "bold")

" Msg {{{

call Colorize("ErrorMsg" , s:molokai_pink   , "#232526" , "bold")
call Colorize("ModeMsg"  , s:molokai_yellow , "NONE"    , "none")
call Colorize("MoreMsg"  , s:molokai_yellow , "NONE"    , "none")

" }}}

" Diff {{{

call Colorize("DiffAdd"  , "NONE" , "#1E0010"    , "none")
call Colorize("DiffChange"  , "#89807D" , "#4C4745"    , "none")
call Colorize("DiffDelete"  , "#960050" , "#1E0010"    , "none")
call Colorize("DiffText"  , "NONE" , "#4C4745"    , "italic")

" }}}

call Colorize("Directory"  , "#A6E22E" , "NONE"    , "bold")
call Colorize("Error"  , "#960050" , "#1E0010"    , "NONE")
call Colorize("Exception"  , "#A6E22E" , "NONE"    , "bold")
call Colorize("Float"  , "#AE81FF" , "NONE"    , "none")
call Colorize("FoldColumn"  , "#465457" , "#000000"    , "none")
call Colorize("Folded"  , "#666666" , "bg"    , "none")
call Colorize("Function"  , "#A6E22E" , "NONE"    , "none")
call Colorize("Identifier", s:molokai_orange, "NONE", "none")
call Colorize("Ignore", "#808080", "bg", "none")
call Colorize("IncSearch", "#C4BE89", "#000000", "none")
call Colorize("Keyword", s:molokai_pink, "NONE", "bold")
call Colorize("Label", s:molokai_yellow, "NONE", "none")
call Colorize("Macro", "#C4BE89", "NONE", "italic")

call Colorize("MatchParen", "#000000", s:molokai_orange, "none")
call Colorize("Operator", s:molokai_pink, "NONE", "none")

" Completion menu {{{

call Colorize("Pmenu"      , s:molokai_blue   , s:molokai_brown , "none")
call Colorize("PmenuSel"   , s:molokai_orange , "bg"            , "none")
call Colorize("PmenuSbar"  , "NONE"           , "#080808"       , "none")
call Colorize("PmenuThumb" , s:molokai_pink   , "NONE"          , "none")


" }}}


" Tabs {{{

call Colorize("TabLine"     , "fg" , s:molokai_black , "none")
call Colorize("TabLineSel"  , "fg" , s:molokai_pink , "bold")
call Colorize("TabLineFill" , "bg" , s:molokai_black , "none")

" }}}


call Colorize("PreCondit" , "#A6E22E" , "NONE", "bold")
call Colorize("PreProc" , "#A6E22E" , "NONE", "bold")
call Colorize("Question" , s:molokai_blue, "NONE", "bold")
call Colorize("Repeat", s:molokai_pink, "NONE", "bold")
call Colorize("Search", "#000000", s:molokai_orange, "none")

" marks column
call Colorize("SignColumn", "#A6E22E", "bg", "bold")

" Special {{{

call Colorize("SpecialKey", s:molokai_brown, "NONE", "none")
call Colorize("SpecialChar", s:molokai_pink, "NONE", "bold")
call Colorize("SpecialComment", "#465457", "NONE", "bold")
call Colorize("Special", s:molokai_blue, "bg", "italic")
call Colorize("NonText", "#465457", "NONE", "none")

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

call Colorize("StorageClass" , s:molokai_orange    , "NONE"          , "italic")
call Colorize("Todo"         , s:molokai_orange    , "bg"            , "bold")
call Colorize("Tag"          , s:molokai_pink      , "NONE"          , "italic")
call Colorize("Structure"    , s:molokai_blue      , "NONE"          , "none")
call Colorize("Title"        , "#ef5939"           , "NONE"          , "none")
call Colorize("Typedef"      , s:molokai_blue      , "NONE"          , "none")
call Colorize("Type"         , s:molokai_blue      , "NONE"          , "none")
call Colorize("Underlined"   , "#808080"           , "NONE"          , "underline")
call Colorize("VertSplit"    , "#808080"           , "bg"            , "bold")
call Colorize("VisualNOS"    , "NONE"              , "#403D3D"       , "none")
call Colorize("Visual"       , "NONE"              , "#403D3D"       , "none")
call Colorize("WarningMsg"   , "#FFFFFF"           , "#333333"       , "bold")
call Colorize("WildMenu"     , s:molokai_blue      , "bg"            , "none")
call Colorize("Normal"       , s:molokai_white     , s:molokai_black , "none")
call Colorize("Comment"      , s:molokai_grey      , "NONE"          , "none")
call Colorize("CursorLine"   , "NONE"              , s:molokai_brown , "none")
call Colorize("CursorColumn" , "NONE"              , s:molokai_brown , "none")
call Colorize("ColorColumn"  , "NONE"              , s:molokai_brown , "none")
call Colorize("LineNr"       , s:molokai_dark_grey , "bg"            , "none")
call Colorize("CursorLineNr" , s:molokai_orange    , s:molokai_brown , "none")



" vim: set fdm=marker:"
