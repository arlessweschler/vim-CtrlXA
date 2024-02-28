let b:CtrlXA_Toggles = [
      \ ['function', 'const', 'return', 'echo', 'print', 'require', 'include', 'require_once', 'include_once', 'new'],
      \ ['static', 'abstract', 'final', 'private', 'protected', 'public'],
      \ ['for', 'foreach', 'while', 'do'],
      \ ['break', 'continue'],
      \ ['if', 'else', 'elseif', 'switch'],
      \ ['try', 'catch', 'finally', 'throw'],
      \ ['private', 'protected', 'public', 'abstract'],
      \ ['class', 'interface', 'trait'],
      \ ['$this', 'parent'],
      \ ['extends', 'implements'],
      \ ] + get(b:, 'CtrlXA_Toggles', g:CtrlXA_Toggles)
let b:undo_ftplugin = 
      \ exists('b:undo_ftplugin') ? b:undo_ftplugin . '| unlet b:CtrlXA_Toggles' : 'unlet b:CtrlXA_Toggles'
