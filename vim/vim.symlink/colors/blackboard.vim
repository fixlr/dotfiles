" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "blackboard"

hi CursorLine                                                             ctermbg=darkgray cterm=none
hi Normal       guifg=#f8f8f8 guibg=#0C1021 gui=none ctermfg=white        ctermbg=black

hi Comment      guifg=#AEAEAE               gui=none ctermfg=DarkGray
hi Constant     guifg=#D8FA3C               gui=none ctermfg=Yellow
hi String       guifg=#61CE3C               gui=none ctermfg=DarkGreen
hi Statement    guifg=#f8de33               gui=none ctermfg=DarkYellow
hi Entity       guifg=#FF6400               gui=none ctermfg=Yellow
hi Support      guifg=#8DA6CE               gui=none ctermfg=Brown
hi Type         guifg=#D8FA3C               gui=none ctermfg=Yellow
hi LineNr       guifg=#888888 guibg=#E3E3E3 gui=none ctermfg=darkgray        ctermbg=black
hi Title        guifg=#F6F3E8               gui=bold ctermfg=red
hi NonText      guifg=#808080 guibg=#0D1021 gui=none ctermfg=red

hi Visual       gui=reverse
hi VertSplit    guifg=#444444 guibg=#444444          ctermfg=white       ctermbg=lightgray
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey   guifg=#808080 guibg=#343434 gui=none

hi link Define          Entity
hi link Function        Support

hi link Structure       Support
hi link Special         Support
hi link Test            Support

hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi link Conditional     Constant
hi link StorageClass    Statement
hi link Operator        Constant
hi link Type            Statement
hi link Statement       Statement
hi link Label           Normal
