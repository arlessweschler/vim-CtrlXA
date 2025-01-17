scriptencoding utf-8

" LICENCE PUBLIQUE RIEN À BRANLER
" Version 1, Mars 2009
"
" Copyright (C) 2009 Sam Hocevar
" 14 rue de Plaisance, 75014 Paris, France
"
" La copie et la distribution de copies exactes de cette licence sont
" autorisées, et toute modification est permise à condition de changer
" le nom de la licence.
"
" CONDITIONS DE COPIE, DISTRIBUTON ET MODIFICATION
" DE LA LICENCE PUBLIQUE RIEN À BRANLER
"
" 0. Faites ce que vous voulez, j'en ai RIEN À BRANLER.

if exists('g:loaded_CtrlXA') || &cp
    finish
endif
let g:loaded_CtrlXA = 1

let s:keepcpo         = &cpo
set cpo&vim
" ------------------------------------------------------------------------------

if !exists('g:CtrlXA_iskeyword')
    let g:CtrlXA_iskeyword = substitute(&g:iskeyword, '\v%(_,|_,)', '', '')
endif

if !exists('g:CtrlXA_Toggles')
    let g:CtrlXA_Toggles = [
                \ ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'w', 'x', 'y', 'z'],
                \ ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'W', 'X', 'Y', 'Z'],
                \ ['i', 'ii', 'iii', 'iv', 'v', 'vi', 'vii', 'viii', 'ix'],
                \ ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
                \
                \ ['alpha', 'beta', 'gamma', 'delta', 'epsilon', 'zeta', 'eta', 'theta', 'iota', 'kappa', 'lambda', 'mu', 'nu', 'xi', 'omikron', 'pi', 'rho', 'sigma', 'tau', 'upsilon', 'phi', 'chi', 'psi', 'omega'],
                \ ['Alpha', 'Beta', 'Gamma', 'Delta', 'Epsilon', 'Zeta', 'Eta', 'Theta', 'Iota', 'Kappa', 'Lambda', 'Mu', 'Nu', 'Xi', 'Omikron', 'Pi', 'Rho',  'Sigma', 'Tau', 'Upsilon', 'Phi', 'Chi', 'Psi', 'Omega'],
                \
                \ ['1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th', '9th', '10th', '11th', '12th', '13th', '14th', '15th', '16th', '17th', '18th', '19th', '20th', '21st', '22nd', '23rd', '24th', '25th', '26th', '27th', '28th', '29th', '30th', '31st'],
                \
                \ ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve'],
                \ ['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve'],
                \ ['first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth'],
                \ ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh', 'Eighth', 'Ninth', 'Tenth', 'Eleventh', 'Twelfth'],
                \
                \ ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december'],
                \ ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                \ ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec'],
                \ ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                \
                \ ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'],
                \ ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
                \ ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'],
                \ ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                \
                \ ['am', 'pm'], ['AM', 'PM'],
                \ ['morning', 'noon', 'afternoon', 'evening'],
                \ ['Morning', 'Noon', 'Afternoon', 'Evening'],
                \ ['today', 'tomorrow', 'yesterday'],
                \ ['Today', 'Tomorrow', 'Yesterday'],
                \ ['day', 'night'], ['Day', 'Night'],
                \
                \ ['true', 'false'], ['True', 'False'], ['TRUE', 'FALSE'],
                \ ['yes', 'no'], ['Yes', 'No'], ['YES', 'NO'],
                \ ['on', 'off'], ['On', 'Off'], ['ON', 'OFF'],
                \ ['up', 'down'], ['Up', 'Down'] ,['UP', 'DOWN'],
                \ ['enable', 'disable'], ['Enable', 'Disable'],
                \ ['enabled', 'disabled'], ['Enabled', 'Disabled'],
                \ ['set', 'unset'],
                \ ['is', 'isnot'] ,
                \ ['&&', '||'],
                \ ['+', '-'], ['++', '--'],
                \ ['==', '!='] , ['=~', '!~'],
                \ ['<', '>'], ['<=', '>='], ['>>', '<<'],
                \
                \ ['int', 'float', 'double', 'char', 'string', 'bool'],
                \ ['Int', 'Float', 'Double', 'Char', 'String', 'Bool'],
                \
                \ ['verbose', 'debug', 'info', 'warn', 'error', 'fatal'], 
                \ ['remote', 'local', 'base'], ['REMOTE', 'LOCAL', 'BASE'],
                \ ['ours', 'theirs'], ['Ours', 'Theirs'],
                \ ['main', 'master'],
                \
                \ ['accept', 'decline'], ['Accept', 'Decline'],
                \ ['add', 'remove'], ['Add', 'Remove'],
                \ ['allow', 'deny'], ['Allow', 'Deny'],
                \ ['buy', 'sell'], ['Buy', 'Sell'],
                \ ['close', 'open'], ['Close', 'Open'],
                \ ['compress', 'decompress'], ['Compress', 'Decompress'],
                \ ['create', 'destroy'], ['Create', 'Destroy'],
                \ ['decrease', 'increase'], ['Decrease', 'Increase'],
                \ ['enter', 'exit'], ['Enter', 'Exit'],
                \ ['expand', 'collapse'], ['Expand', 'Collapse'],
                \ ['fail', 'succeed'], ['Fail', 'Succeed'],
                \ ['import', 'export'], ['Import', 'Export'],
                \ ['increase', 'decrease'], ['Increase', 'Decrease'],
                \ ['input', 'output'], ['Input', 'Output'],
                \ ['join', 'leave'], ['Join', 'Leave'],
                \ ['lock', 'unlock'], ['Lock', 'Unlock'],
                \ ['push', 'pull'], ['Push', 'Pull'],
                \ ['read', 'write'], ['Read', 'Write'],
                \ ['receive', 'send'], ['Receive', 'Send'],
                \ ['save', 'discard'], ['Save', 'Discard'],
                \ ['show', 'hide'], ['Show', 'Hide'],
                \ ['start', 'stop'], ['Start', 'Stop'],
                \ ['win', 'lose'], ['Win', 'Lose'],
                \
                \ ['client', 'server'], ['Client', 'Server'],
                \ ['in', 'out'], ['In', 'Out'],
                \ ['success', 'failure'], ['Success', 'Failure'],
                \
                \ ['max', 'min'], ['Max', 'Min'],
                \ ['maximum', 'minimum'], ['Maximum', 'Minimum'],
                \ ['maximal', 'minimal'], ['Maximal', 'Minimal'],
                \ ['maximize', 'minimize'], ['Maximize', 'Minimize'],
                \
                \ ['upper', 'lower'], ['Upper', 'Lower'],
                \ ['top', 'bottom'], ['Top', 'Bottom'],
                \ ['above', 'below'], ['Above', 'Below'],
                \ ['forward', 'backward'], ['Forward', 'Backward'],
                \ ['right', 'middle', 'left'], ['Right', 'Middle', 'Left'],
                \ ['next', 'previous'], ['Next', 'Previous'],
                \ ['first', 'last'], ['First', 'Last'],
                \ ['begin', 'end'], ['Begin', 'End'],
                \ ['before', 'after'], ['Before', 'After'],
                \
                \ ['red', 'green', 'blue', 'yellow', 'purple', 'orange', 'black', 'white', 'gray', 'brown'],
                \ ['Red', 'Green', 'Blue', 'Yellow', 'Purple', 'Orange', 'Black', 'White', 'Gray', 'Brown'],
                \
                \ ['small', 'medium', 'large'],
                \ ['Small', 'Medium', 'Large'],
                \
                \ ['more', 'less'], ['More', 'Less'],
                \ ['good', 'bad'], ['Good', 'Bad'],
                \ ['best', 'worst'], ['Best', 'Worst'],
                \ ['better', 'worse'], ['Better', 'Worse'],
                \ ['bigger', 'smaller'], ['Bigger', 'Smaller'],
                \ ['cheap', 'expensive'], ['Cheap', 'Expensive'],
                \ ['clean', 'dirty'], ['Clean', 'Dirty'],
                \ ['clear', 'unclear'], ['Clear', 'Unclear'],
                \ ['detailed', 'brief'], ['Detailed', 'Brief'],
                \ ['early', 'late'], ['Early', 'Late'],
                \ ['easy', 'difficult'], ['Easy', 'Difficult'],
                \ ['few', 'many'], ['Few', 'Many'],
                \ ['fast', 'slow'], ['Fast', 'Slow'],
                \ ['gain', 'loss'], ['Gain', 'Loss'],
                \ ['high', 'low'], ['High', 'Low'],
                \ ['hot', 'cold'], ['Hot', 'Cold'],
                \ ['internal', 'external'], ['Internal', 'External'],
                \ ['light', 'dark'] , ['Light', 'Dark'] ,
                \ ['major', 'minor'], ['Major', 'Minor'],
                \ ['manual', 'automatic'], ['Manual', 'Automatic'],
                \ ['new', 'old'], ['New', 'Old'],
                \ ['normal', 'abnormal'], ['Normal', 'Abnormal'],
                \ ['now', 'later'], ['Now', 'Later'],
                \ ['optional', 'mandatory'], ['Optional', 'Mandatory'],
                \ ['permanent', 'temporary'], ['Permanent', 'Temporary'],
                \ ['private', 'public'], ['Private', 'Public'],
                \ ['quiet', 'loud'], ['Quiet', 'Loud'],
                \ ['rich', 'poor'], ['Rich', 'Poor'],
                \ ['simple', 'complex'], ['Simple', 'Complex'],
                \ ['strong', 'weak'], ['Strong', 'Weak'],
                \
                \ ['bit', 'byte', 'kilobyte', 'megabyte', 'gigabyte', 'terabyte'],
                \ ['Bit', 'Byte', 'Kilobyte', 'Megabyte', 'Gigabyte', 'Terabyte'],
                \
                \ ['MIT', 'GPL', 'Apache', 'BSD', 'LGPL', 'EPL', 'CC0', 'CC-BY', 'CC-BY-SA'],
                \
                \ ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS', 'HEAD'],
                \
                \ ['for', 'while', 'do'],
                \ ['if', 'else'],
                \
                \ ['zh', 'ja', 'en', 'es', 'fr', 'pt', 'de', 'nl', 'it', 'ro', 'ru', 'pl'],
                \ ]
endif

if !exists('g:CtrlXA_move')
    let g:CtrlXA_move = 0
endif

augroup CtrlXA
    autocmd!
    " delay detection of &spelllang as long as possible
    autocmd BufNew,BufRead * autocmd BufWinEnter <buffer> if &l:spell | call CtrlXA#localization#init(&spelllang) | endif
    if exists('##OptionSet')
        autocmd OptionSet spell if v:option_new | call CtrlXA#localization#init(&spelllang) | endif
        autocmd OptionSet spelllang call CtrlXA#localization#init(&spelllang)
    endif
augroup end
silent doautoall CtrlXA BufNew,BufRead

set nrformats-=alpha

nnoremap <silent><expr> <Plug>(CtrlXA-CtrlA)  CtrlXA#SingleInc("\<C-A>")
nnoremap <silent><expr> <Plug>(CtrlXA-CtrlX)  CtrlXA#SingleInc("\<C-X>")
xnoremap <silent>       <Plug>(CtrlXA-CtrlA)  :<C-u>call CtrlXA#MultipleInc("\<Plug>(CtrlXA-CtrlA)", '0')<CR>
xnoremap <silent>       <Plug>(CtrlXA-CtrlX)  :<C-u>call CtrlXA#MultipleInc("\<Plug>(CtrlXA-CtrlX)", '0')<CR>
xnoremap <silent>       <Plug>(CtrlXA-gCtrlA) :<C-u>call CtrlXA#MultipleInc("\<Plug>(CtrlXA-CtrlA)", '1')<CR>
xnoremap <silent>       <Plug>(CtrlXA-gCtrlX) :<C-u>call CtrlXA#MultipleInc("\<Plug>(CtrlXA-CtrlX)", '1')<CR>

silent! nmap <unique>   <C-A> <Plug>(CtrlXA-CtrlA)
silent! nmap <unique>   <C-X> <Plug>(CtrlXA-CtrlX)
silent! xmap <unique>   <C-A> <Plug>(CtrlXA-CtrlA)
silent! xmap <unique>   <C-X> <Plug>(CtrlXA-CtrlX)
silent! xmap <silent>   g<C-A> <Plug>(CtrlXA-gCtrlA)
silent! xmap <silent>   g<C-X> <Plug>(CtrlXA-gCtrlX)

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
