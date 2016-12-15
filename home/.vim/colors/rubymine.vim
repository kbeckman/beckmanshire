set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="rubymine"

hi Normal     ctermfg=007 ctermbg=235 cterm=none

hi comments   ctermfg=002 ctermbg=none cterm=bold
hi constants  ctermfg=044 ctermbg=none cterm=none
hi integers   ctermfg=196 ctermbg=none cterm=none
hi keywords   ctermfg=027 ctermbg=none cterm=bold
hi methods    ctermfg=221 ctermbg=none cterm=none
hi strings    ctermfg=136 ctermbg=none cterm=none
hi symbols    ctermfg=099 ctermbg=none cterm=none
hi text       ctermfg=255 ctermbg=none cterm=none
hi variables  ctermfg=007 ctermbg=none cterm=bold


" comments
hi link goComment         comments
hi link rubyComment       comments
hi link rubyDocumentation comments
hi link rubySharpBang     comments

" constants, module names, class names
hi link goExtraType               constants
hi link rubyConstant              constants
hi link rubyMethodBlock           constants
hi link rubyModuleDeclaration     constants
hi link rubyRailsUserClass        constants

" integersi
hi link goDecimalInt              integers
hi link rubyInteger               integers

" keywords
hi link goBlock                   keywords
hi link goConditional             keywords
hi link goDeclaration             keywords
hi link goDirective               keywords
hi link goStatement               keywords
hi link rubyAccess                keywords
hi link rubyAttribute             keywords
hi link rubyBoolean               keywords
hi link rubyClass                 keywords
hi link rubyConditional           keywords
hi link rubyConditionalModifier   keywords
hi link rubyControl               keywords
hi link rubyDefine                keywords
hi link rubyException             keywords
hi link rubyGemfileMethod         keywords
hi link rubyInclude               keywords
hi link rubyKeyword               keywords
hi link rubyModule                keywords
hi link rubyPseudoVariable        keywords
hi link rubyRailsMigrationMethod  keywords
hi link rubyRailsRakeMethod       keywords

" method declarations
hi link rubyFunction              methods

" strings
hi link goString                  strings
hi link rubyString                strings
hi link rubyStringDelimiter       strings

" symbols
hi link goType                    symbols
hi link rubySymbol                symbols

" normal text
hi link rubyLocalVariableOrMethod text
hi link rubyInstanceVariable      text
hi link rubyMethodBlock           text
hi link rubyBlockParameter        text
hi link rubyBlockParameterList    text
hi link rubyCurlyBlock            text

" variables
hi link rubyClassVariable         variables

