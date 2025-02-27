" ====================================================================================
" Vim Color File
" URL:        https://github.com/YOUR_GITHUB_USERNAME/nvim-jb-colorscheme
" Filename:   colors/jb.vim
" Author:     YOUR_NAME
" License:    The MIT License (MIT)
" ====================================================================================

highlight clear
set cursorline

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="jb"

" Load configuration
let s:config = jb#GetConfig()
let s:colors = jb#GetColors(s:config.style, s:config.overrides)

" UI configuration
if get(s:config, "enable_unicode", 0) == 1
  set fillchars-=vert:\| | set fillchars+=vert:\│
  let g:gitgutter_sign_added = '┃'
  let g:gitgutter_sign_modified = '┃'
  let g:gitgutter_sign_removed = '┃'
  let g:gitgutter_sign_removed_first_line = '┓'
  let g:gitgutter_sign_removed_above_and_below = '╏'
  let g:gitgutter_sign_modified_removed = '┨'
endif

function! s:h(group, style)
  if get(s:config, "enable_italic", 0) == 0
    if has_key(a:style, "gui") && a:style["gui"] == "italic"
      unlet a:style.gui
    endif
  endif
  execute "highlight" a:group
    \ "guifg="   get(a:style, "fg", {}).gui
    \ "guibg="   get(a:style, "bg", {}).gui
    \ "gui="     get(a:style, "gui", "NONE")
endfunction

call s:h("JBDefault", { "fg": s:colors.text })
call s:h("JBComment", { "fg": s:colors.comment })
call s:h("JBString", { "fg": s:colors.string })
call s:h("JBNumber", { "fg": s:colors.number })
call s:h("JBKeyword", { "fg": s:colors.keyword })
call s:h("JBFunction", { "fg": s:colors.function })
call s:h("JBConstant", { "fg": s:colors.const })
call s:h("JBType", { "fg": s:colors.type })

highlight! link Normal JBDefault
highlight! link Comment JBComment
highlight! link Constant JBConstant
highlight! link Identifier JBFunction
highlight! link Statement JBKeyword
highlight! link Type JBType
highlight! link String JBString
highlight! link Number JBNumber
highlight! link Function Identifier

set background=dark

