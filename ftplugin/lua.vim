let b:CtrlXA_Toggles = [
      \ ['nil', 'number', 'number', 'string', 'boolean', 'string', 'number', 'number', 'number', 'number'],
      \ ['for', 'while', 'repeat'],
      \ ['if', 'else'],
      \ ['pcall', 'xpcall'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
