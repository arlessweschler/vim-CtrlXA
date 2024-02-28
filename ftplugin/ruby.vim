let b:CtrlXA_Toggles = [
      \ ['nil', 'true', 'false', 'self', 'return', 'yield', 'redo', 'retry', 'break', 'next'],
      \ ['module', 'class', 'def', 'undef', 'begin', 'rescue', 'ensure', 'end'],
      \ ['if', 'unless', 'while', 'until', 'for', 'in', 'do'],
      \ ['break', 'next'],
      \ ['if', 'else', 'elsif', 'case', 'when'],
      \ ['begin', 'rescue', 'ensure', 'raise'],
      \ ['public', 'protected', 'private'],
      \ ['class', 'module'],
      \ ['self', 'super'],
      \ ['include', 'extend'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
