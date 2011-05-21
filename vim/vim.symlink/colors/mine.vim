" My vim colors

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mine"

" GUI
" hi Cursor
" hi Visual                                                               gui=reverse
hi CursorLine                                           ctermbg=7                     cterm=none
hi LineNr       guifg=#888888 ctermfg=238 guibg=#E3E3E3 ctermbg=0         gui=none
hi VertSplit    guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=0

" StatusLine
hi StatusLine   guifg=#f6f3e8 ctermfg=238 guibg=#444444 ctermbg=7 gui=italic
hi StatusLineNC guifg=#857b6f ctermfg=243 guibg=#444444 ctermbg=7

" Search

" Syntax
hi Normal       guifg=#f8f8f8 ctermfg=15  guibg=#0C1021 ctermbg=233 gui=none
hi link Label           Normal
hi Comment      guifg=#AEAEAE ctermfg=145
hi Constant     guifg=#D8FA3C ctermfg=191
hi link Character       Constant
hi link Number          Constant
hi link Float           Constant
hi link Boolean         Constant
hi link Conditional     Constant
hi link Operator        Constant
hi String       guifg=#61CE3C ctermfg=77
hi Statement    guifg=#f8de33 ctermfg=220
hi link StorageClass    Statement
hi link Type            Statement
hi Entity       guifg=#FF6400 ctermfg=202
hi link Define          Entity
hi Support      guifg=#8DA6CE ctermfg=110
hi link Function        Support
hi link Structure       Support
hi link Special         Support
hi link Test            Support
hi Type         guifg=#D8FA3C ctermfg=191
hi Title        guifg=#F6F3E8 ctermfg=7

" Invisible characters
hi NonText      guifg=#808080 ctermfg=244 guibg=#0D1021 ctermbg=233 gui=none
hi SpecialKey   guifg=#808080 ctermfg=244 guibg=#343434 ctermbg=236 gui=none

" Diff
" hi diffAdded
" hi diffRemoved
" hi diffFile
" hi diffNewFile
" hi diffLine

" Git
" hi gitcommitFirstLine
" hi gitcommitSelectedType
" hi link gitcommitSelectedFile
" hi gitcommitDiscardedType
" hi link gitcommitDiscardedFile
" hi gitcommitUntrackedFile

" Ruby
hi link rubyClass            Statement
hi link rubyDefine           Statement
hi link rubyBoolean          Statement
hi link rubyConditional      Statement
hi rubySymbol                guifg=#FBDE2D ctermfg=226
hi link rubyPseudoVariable   rubySymbol
hi link rubyFunction         Entity
hi link rubyConstant         Support
hi link rubyClassDeclaration Entity
hi link rubyRailsUserClassDeclaration Entity
hi link rubyInterpolationDelimiter    String
hi link rubyInterpolation    String
hi link rubyRailsUserClass   Support
hi link rubyStringDelimiter  String
hi link rubyInstanceVariable Normal
hi link rubyBlockParameter   Normal
" hi rubyRegexp
" hi rubyRegexpAnchor
" hi rubyRegexpQuantifier
" hi rubyRegexpParens
" hi rubyRegexpEscape
hi link rubyRegexpCharClass rubyClass
hi link rubyRegexpQuantifier String
hi link rubyRegexpSpecial    String
hi link rubyRegexpBrackets   String
hi link rubyRegexpEscape     rubyClass
" hi rubyRegexpDelimiter
" hi rubyEscape
" hi rubyControl
" hi rubyOperator
" hi rubyException
" hi rubyInclude
" hi rubyGlobalVariable
" hi rubyInclude

" XML
" hi link xmlEndTag xmlTag

" HTML
" hi htmlTag
" hi link htmlEndTag htmlTag
" hi link htmlTagName htmlTag
" hi link htmlArg htmlTag
" hi htmlSpecialChar
" hi htmlH1
" hi link htmlH2 htmlH1
" hi link htmlH3 htmlH1
" hi link htmlH4 htmlH1
" hi link htmlH5 htmlH1
" hi link htmlH6 htmlH1

" JavaScript
hi link javaScriptFunction      Statement
hi link javaScriptOpAssign      Statement
hi link javaScriptFuncName      Normal
" hi javaScriptLabel
" hi javaScriptRailsFunction
hi link javaScriptType          Statement
" hi javaScriptArgument
" hi javaScriptRegexpString
" hi javaScriptSpecial
hi link javaScriptBoolean      Statement
hi link javaScriptBranch       Statement
hi link javaScriptThis         Normal
" NOTE: Syntax Highlighting for javascript doesn't match the
" TextMate version very accurately, because the javascript
" syntax file does not create matches for some items. In
" particular:
" * javaScriptArgument - e.g. function(argument)
" * javaScriptFuncName for object literal style functions - e.g.: 
"   myFunction: function() { ... }

" YAML
" hi yamlAnchor
" hi yamlAlias
" hi yamlDocumentHeader

" CSS
hi link cssTagName      Entity
hi link cssIdentifier   Entity
hi link cssClassName    Entity
hi link cssPseudoClass  Entity
hi link cssDefinition   Support
hi link cssRenderProp   cssDefinition
hi link cssTextProp     cssDefinition
hi link cssFontProp     cssDefinition
hi link cssColorProp    cssDefinition
hi link cssBoxProp      cssDefinition
hi link cssGeneratedContentProp cssDefinition
hi link cssUIProp       cssDefinition
hi cssCommonAttr        guifg=#FBDE2D ctermfg=226
hi link cssRenderAttr   cssCommonAttr
hi link cssTextAttr     cssCommonAttr
hi link cssFontAttr     cssCommonAttr
" hi link cssGeneratedContentAttr cssCommonAttr
" hi cssFunctionName
hi link cssColor        cssCommonAttr
hi link cssValueLength  cssCommonAttr
hi link cssURL          Normal
hi link cssColorAttr    Support
hi link cssPseudoClassId Entity
" hi cssImportant

" VimScript
hi link vimHiKeyList    String
hi link vimHiGuiFgBg    String
hi link vimHiGuiRgb     String
hi link vimHiGui        String
hi link vimHiCtermFgBg  String
hi link vimNumber       String
hi link vimHiCterm      String
hi link vimHiAttrib     String
hi link vimGroup        Support
" hi link vimHiGroup vimGroup
" hi vimCommentTitle
" hi helpSpecial

" Markdown
" hi markdownBold
" hi markdownItalic
" hi markdownCode
" hi link markdownCodeBlock markdownCode
