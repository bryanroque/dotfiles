let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_dont_ask_default = 1

function SlimeOverride_EscapeText_scheme(text)
  return system("~/.config/nvim/slime-lisp", a:text)
endfunction

function SlimeOverride_EscapeText_lisp(text)
  return system("~/.config/nvim/slime-lisp", a:text)
endfunction
