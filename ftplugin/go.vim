let b:CtrlXA_Toggles = [
      \ ['func', 'int', 'float32', 'string', 'bool', 'byte', 'byte', 'int16', 'int64', 'float64'],
      \ ['var', 'const'],
      \ ['for', 'for', 'for'],
      \ ['break', 'continue'],
      \ ['if', 'else', 'switch'],
      \ ['defer', 'panic', 'recover', 'panic'],
      \ ['type', 'interface'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
