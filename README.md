*CtrlXA*
=========

This Vim plug-in makes the key bindings `<Ctrl-X/A>` additionally cycle through keywords in lists such as `true/false`, `yes/no`, `set/unset` or `yesterday/today/tomorrow`.

These keywords are configurable by the variable `g:CtrlXA_Toggles` which defaults to

```vim
    let g:CtrlXA_Toggles = [
        \ ['true', 'false'], ['True', 'False'], ['TRUE', 'FALSE'] ,
        \ ['yes', 'no'], ['Yes', 'No'], ['YES', 'NO'] ,
        \ ['on', 'off'] ,
        \ ['set', 'unset'] ,
        \ ['up', 'down'] ,
        \ ['is', 'isnot'] ,
        \ ['right', 'wrong'], ['Right', 'Wrong'], ['rightly', 'wrongly'], ['Rightly', 'Wrongly'] ,
        \ ['enable', 'disable'], ['enabled', 'disabled'], ['Enable', 'Disable'], ['Enabled', 'Disabled'] ,
        \ ['if', 'elseif', 'else', 'endif'],
        \ ]
```
