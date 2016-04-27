if exists("g:loaded_helptab") || &cp
  finish
endif
let g:loaded_helptab = 1


function! s:HelpTab()
  if !(getcmdtype() == ':' && getcmdpos() <= 2)
    return 'h'
  endif

  let helptabnr = 0
  for i in range(tabpagenr('$'))
    let tabnr = i + 1
    for bufnr in tabpagebuflist(tabnr)
      if getbufvar(bufnr, "&ft") == 'help'
        let helptabnr = tabnr
        break
      endif
    endfor
  endfor

  if helptabnr
    if tabpagenr() == helptabnr
      return 'h'
    else
      return 'tabnext '.helptabnr.' | h'
    endif
  else
    return 'tab h'
  endif
endfunction

cnoreabbrev <expr> h <SID>HelpTab()

