function! cpp_typecheck#exec(...)
   let l:old_makeprg = &makeprg

   let l:cmd = 'cpp-typecheck ' . join(a:000)
   let &makeprg = l:cmd
   lmake

   let &makeprg = l:old_makeprg
endfunction

function! cpp_typecheck#print_error(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl None
endfunction

