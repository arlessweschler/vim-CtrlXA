let b:CtrlXA_Toggles = [
      \ ['my', 'use', 'sub', 'undef', 'our', 'local', 'state', 'package', 'bless', 'tie'],
      \ ['require', 'import', 'no', 'do'],
      \ ['foreach', 'while', 'until'],
      \ ['last', 'next'],
      \ ['if', 'else', 'elsif', 'unless'],
      \ ['eval', 'die', 'warn', 'exit'],
      \ ['public', 'private', 'protected', 'my'],
      \ ['ref', 'bless'],
      \ ['self', 'SUPER'],
      \ ['use', 'no'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
