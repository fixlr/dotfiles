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
hi Visual                                               ctermbg=237
hi CursorLine                                           ctermbg=235                     cterm=none
hi LineNr       guifg=#888888 ctermfg=235 guibg=#E3E3E3 ctermbg=232         gui=none
hi VertSplit    guifg=#444444 ctermfg=234 guibg=#444444 ctermbg=235

" StatusLine
hi StatusLine   guifg=#f6f3e8 ctermfg=darkmagenta guibg=#444444 ctermbg=255 gui=none
hi StatusLineNC guifg=#857b6f ctermfg=232 guibg=#444444 ctermbg=lightmagenta

" Search

" Syntax
hi Comment      guifg=#AEAEAE ctermfg=236
hi Constant     guifg=#D8FA3C ctermfg=191
hi Entity       guifg=#FF6400 ctermfg=202
hi Normal       guifg=#ffffff ctermfg=255  guibg=#0C1021 ctermbg=233 gui=none
hi String       guifg=#61CE3C ctermfg=76
hi Statement    guifg=#f8de33 ctermfg=220
hi Support      guifg=#8DA6CE ctermfg=110
hi Type         guifg=#D8FA3C ctermfg=191
hi Title        guifg=#F6F3E8 ctermfg=7
hi link Boolean         Constant
hi link Character       Constant
hi link Conditional     Constant
hi link Define          Entity
hi link Float           Constant
hi link Function        Support
hi link Label           Normal
hi link Number          Constant
hi link Operator        Constant
hi link Special         Support
hi link StorageClass    Statement
hi link Structure       Support
hi link Test            Support
hi link Type            Statement

" Invisible characters
hi NonText      guifg=#808080 ctermfg=235 gui=none
hi SpecialKey   guifg=#808080 ctermfg=235 gui=none

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
hi rubySymbol                guifg=#FBDE2D ctermfg=226

hi link rubyBlockParameter   Normal
hi link rubyBoolean          Statement
hi link rubyClass            Statement
hi link rubyClassDeclaration Entity
hi link rubyConditional      Statement
hi link rubyConstant         Support
hi link rubyDefine           Statement
hi link rubyFunction         Entity
hi link rubyInclude          Statement
hi link rubyInstanceVariable Normal
hi link rubyInterpolationDelimiter    String
hi link rubyInterpolation    String
hi link rubyPseudoVariable   rubySymbol
hi link rubyRailsTestMethod  Statement
hi link rubyRailsUserClass   Support
hi link erubyRailsUserClass  Support
hi link rubyRailsUserClassDeclaration Entity
hi link rubyRegexpCharClass  Statement
hi link rubyRegexpQuantifier String
hi link rubyRegexpSpecial    String
hi link rubyRegexpBrackets   String
hi link rubyRegexpEscape     Statement
hi link rubyStringDelimiter  String
" hi rubyRegexp
" hi rubyRegexpAnchor
" hi rubyRegexpQuantifier
" hi rubyRegexpParens
" hi rubyRegexpEscape
" hi rubyRegexpDelimiter
" hi rubyEscape
" hi rubyControl
" hi rubyOperator
" hi rubyException
" hi rubyInclude
" hi rubyGlobalVariable
" hi rubyInclude

" XML
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag
hi link xmlEqual  xmlTag

" HTML
hi link htmlArg     Support
hi link htmlEndTag  Support
hi link htmlH1      Normal
hi link htmlH2      htmlH1
hi link htmlH3      htmlH1
hi link htmlH4      htmlH1
hi link htmlH5      htmlH1
hi link htmlH6      htmlH1
hi link htmlLink    Normal
hi link htmlTag     Support
hi link htmlTagName Support
hi link htmlTitle   Normal
" hi link htmlEndTag htmlTag
" hi htmlSpecialChar
" hi link htmlSpecialTagName     Entity
hi link htmlScriptTag          Entity

" JavaScript
hi link javaScript             Normal
hi link javaScriptBoolean      Statement
hi link javaScriptBranch       Statement
hi link javaScriptConditional  Statement
hi link javaScriptFunction     Statement
hi link javaScriptFuncName     Normal
hi link javaScriptMember       Support
hi link javaScriptNull         Statement
hi link javaScriptNumber       Number
hi link javaScriptOpAssign     Statement
hi link javaScriptThis         Normal
hi link javaScriptType         Statement
" hi javaScriptLabel
" hi javaScriptRailsFunction
" hi javaScriptArgument
" hi javaScriptRegexpString
" hi javaScriptSpecial
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
hi cssCommonAttr        guifg=#FBDE2D ctermfg=226

hi link cssBoxProp      Support
hi link cssClassName    Entity
hi link cssColor        cssCommonAttr
hi link cssColorAttr    Support
hi link cssColorProp    Support
hi link cssDefinition   Support
hi link cssFontAttr     cssCommonAttr
hi link cssFontProp     Support
hi link cssGeneratedContentProp Support
hi link cssIdentifier   Entity
hi link cssPseudoClass  Entity
hi link cssPseudoClassId Entity
hi link cssRenderAttr   cssCommonAttr
hi link cssRenderProp   Support
hi link cssTagName      Entity
hi link cssTextAttr     cssCommonAttr
hi link cssTextProp     Support
hi link cssUIProp       Support
hi link cssURL          Normal
hi link cssValueLength  cssCommonAttr
" hi link cssGeneratedContentAttr cssCommonAttr
" hi cssFunctionName
" hi cssImportant

" VimScript
hi link vimGroup        Support
hi link vimHiAttrib     String
hi link vimHiCtermFgBg  String
hi link vimHiCterm      String
hi link vimHiGui        String
hi link vimHiGuiFgBg    String
hi link vimHiGuiRgb     String
hi link vimHiKeyList    String
hi link vimNumber       String
hi link vimBracket      vimNotation
" hi link vimHiGroup vimGroup
" hi vimCommentTitle
" hi helpSpecial

" PHP
hi link phpBoolean         Statement
hi link phpComment         Comment
hi link phpConstant        Statement
hi link phpConditional     Statement
hi link phpDefine          Statement
hi link phpDoubleString    String
hi link phpIdentifier      Normal
hi link phpInclude         Statement
hi link phpOperator        Statement
hi link phpMemberSelector  Statement
hi link phpRegion          Normal
hi link phpSingleString    String
hi link phpSpecialChar     Constant
hi link phpSpecialFunction Support
hi link phpStructure       Statement
hi link phpType            Support
hi link phpVarSelector     Normal

" PHP - Stupid misc stuff
" Why not phpDelimiter?
hi link Delimiter          Normal
" Seriously?  Single and double quotes are named "None"  Awesome, thanks.
hi link None String

" Markdown
" hi markdownBold
" hi markdownItalic
" hi markdownCode
" hi link markdownCodeBlock markdownCode
