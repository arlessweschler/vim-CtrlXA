let b:CtrlXA_Toggles = [
      \ ['None', 'True', 'False', 'and', 'as', 'assert', 'async', 'await', 'break', 'class'],
      \ ['continue', 'def', 'del', 'elif', 'else', 'except', 'finally'],
      \ ['for', 'from', 'global', 'if', 'import', 'in', 'is'],
      \ ['lambda', 'nonlocal', 'not', 'or', 'pass'],
      \ ['raise', 'return', 'try', 'while', 'with'],
      \ ['def', 'return', 'raise', 'from', 'import', 'as', 'nonlocal', 'global'],
      \ ['class', 'lambda'],
      \ ['from', 'import'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
