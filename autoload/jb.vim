let s:path = printf('%s/palettes.json', expand('<sfile>:p:h'))
let s:flines = readfile(s:path)
let s:jb_palettes = json_decode(join(s:flines))
let s:colors = {}

function! jb#GetConfig()
  return {
        \ 'style': get(g:, 'jb_style', 'dark'),
        \ 'overrides': get(g:, 'jb_color_overrides', {}),
        \ 'enable_italic': get(g:, 'jb_enable_italic', 0),
        \ 'enable_unicode': get(g:, 'jb_enable_unicode', 0),
        \ }
endfunction

function! jb#GetColors(style, overrides)
    let l:style = a:style ==# 'mid' ? 'mid' : a:style ==# 'light' ? 'light' : 'dark'
    let l:palettes_dict = get(s:jb_palettes, l:style, {})
    for [key, val] in items(l:palettes_dict)
        let s:colors[key] = get(a:overrides, key, {"gui": val.hex})
    endfor
    return s:colors
endfunction

